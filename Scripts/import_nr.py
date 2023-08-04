from abc import ABCMeta, abstractmethod
from enum import Enum
import logging
import os
import sys
from glob import glob
from typing import Generator, List

import qtmax  # type: ignore
from pymxs import animate, attime  # type: ignore
from pymxs import runtime as rt  # type: ignore
from PySide2.QtWidgets import (
    QFileDialog,
    QFormLayout,
    QGroupBox,
    QHBoxLayout,
    QLabel,
    QLineEdit,
    QMainWindow,
    QMessageBox,
    QPushButton,
    QSpinBox,
    QVBoxLayout,
    QWidget,
    QGridLayout,
    QCheckBox,
)
from PySide2.QtCore import Qt, QSettings

sys.path.append(os.path.join(os.path.dirname(__file__), "nr"))
import nr3dsimp  # type: ignore # noqa
import nrimp  # type: ignore # noqa

# Constants
NINJA_RIPPER_PATH = os.path.join(os.environ["AppData"], "Ninja Ripper")
DEFAULT_PREFIX = "mesh_"
DEFAULT_ROTATION = rt.EulerAngles(-90, 0, 0)
DEFAULT_SCALE = 1

LABEL_RED = "rgb(255, 100, 75)"
LABEL_GREEN = "rgb(100, 255, 75)"
LABEL_BLUE = "rgb(75, 100, 255)"


class ESoftwareType(Enum):
    Max = 0
    Maya = 1
    Blender = 2


def GetSoftwareType() -> ESoftwareType:
    try:
        import pymxs  # type: ignore # noqa

        return ESoftwareType.Max
    except ImportError:
        pass

    try:
        import maya  # type: ignore # noqa

        return ESoftwareType.Maya
    except ImportError:
        pass

    try:
        import bpy  # type: ignore # noqa

        return ESoftwareType.Blender
    except ImportError:
        pass

    raise RuntimeError("No valid software type found.")


class NinjaRipperImporter(metaclass=ABCMeta):
    @abstractmethod
    def Import(filename: str):
        pass

    @abstractmethod
    def Export(filename: str):
        pass


class QSpinBoxLabel(QWidget):
    def __init__(self, label: str, border_color: str = "") -> None:
        super().__init__(None)
        self.setLayout(QHBoxLayout())

        label_widget = QLabel(f"{label}:")
        label_widget.setAlignment(Qt.AlignLeft | Qt.AlignVCenter)
        self.layout().addWidget(label_widget)
        self.spinbox = QSpinBox()
        self.spinbox.setFixedWidth(60)
        self.spinbox.setStyleSheet(
            f"QSpinBox {{ border-style : solid; border-width : 2px; border-color : {border_color};}}"
        )
        self.layout().addWidget(self.spinbox)

    def value(self) -> float:
        return self.spinbox.value()

    def setValue(self, value: float) -> None:
        self.spinbox.setValue(value)

    def setRange(self, min: float, max: float) -> None:
        self.spinbox.setRange(min, max)


def import_file(filename: str):
    # Create default importer and import options
    importer = nr3dsimp.MaxImporter()
    options = nrimp.ImportOptions()

    # Import the specified filename
    importer.importMesh(False, filename, options)


def bake_vertex_animation(
    source: rt.EditablePoly, target: rt.EditablePoly, count: int, frame: int
):
    # Enable `with animation` context
    with animate(True):
        # Offset by 1 because of MAXScript indexing
        for i in range(1, count + 1):
            # Get the position of the target vert
            b_pos = rt.PolyOp.GetVert(target, i)
            # Enable `with at time` context
            with attime(frame):
                # Set the source vert to the target vert position
                rt.PolyOp.SetVert(source, i, b_pos)


class NinjaRipperImportWindow(QMainWindow):
    """Main window for importing Ninja Ripper assets."""

    def __init__(self):
        super().__init__(qtmax.GetQMaxMainWindow())
        self.setWindowTitle("Ninja Ripper Animation Importer")
        self.setup_logger()
        self.setup_ui()
        self.settings = QSettings("NinjaRipper", "NinjaRipperImportWindow")
        self.load_settings()

    def setup_logger(self) -> None:
        self.logger = logging.getLogger("NinjaRipperImporter")
        self.logger.addHandler(logging.StreamHandler(sys.stdout))

    def setup_ui(self) -> None:
        self.central_widget = QWidget()
        self.setCentralWidget(self.central_widget)

        self.central_widget_layout = QVBoxLayout()
        self.central_widget_layout.setContentsMargins(10, 10, 10, 10)
        self.central_widget.setLayout(self.central_widget_layout)

        # Search text and browse button
        self.search_line_edit = QLineEdit()
        self.search_line_edit.setText(NINJA_RIPPER_PATH)

        self.browse_button = QPushButton("...")
        self.browse_button.clicked.connect(self.on_browse_clicked)

        # Search widget and layout
        self.search_layout = QHBoxLayout()
        self.search_layout.addWidget(self.search_line_edit)
        self.search_layout.addWidget(self.browse_button)
        self.search_widget = QWidget()
        self.search_widget.setLayout(self.search_layout)

        # Import options
        self.import_options_group = QGroupBox("Options")
        self.import_options_layout = QFormLayout()
        self.import_options_group.setLayout(self.import_options_layout)
        self.mesh_prefix_line_edit = QLineEdit()
        self.mesh_prefix_line_edit.setText(DEFAULT_PREFIX)
        self.mesh_index_line_edit = QLineEdit()

        self.frame_count_spinbox = QSpinBox()
        self.mesh_count_spinbox = QSpinBox()
        self.mesh_collapse_checkbox = QCheckBox()
        self.guess_mesh_frame_count = QPushButton("Guess mesh + frame count")
        self.guess_mesh_frame_count.clicked.connect(self.guess_files)

        self.import_options_layout.addRow("Prefix", self.mesh_prefix_line_edit)
        self.import_options_layout.addRow("Indexes", self.mesh_index_line_edit)
        self.import_options_layout.addRow("Number of frames", self.frame_count_spinbox)
        self.import_options_layout.addRow(
            "Number of meshes in a frame", self.mesh_count_spinbox
        )
        self.import_options_layout.addRow(self.guess_mesh_frame_count)

        # Import transform
        self.import_transform_group = QGroupBox("Transforms")
        self.import_transform_layout = QGridLayout()
        self.import_transform_group.setLayout(self.import_transform_layout)

        # Translate

        self.import_translate_label = QLabel("Translate")
        self.import_transform_layout.addWidget(
            self.import_translate_label, 0, 0, Qt.AlignLeft | Qt.AlignVCenter
        )

        self.import_translate_x = QSpinBoxLabel("X", LABEL_RED)
        self.import_translate_x.setRange(-10000, 10000)
        self.import_transform_layout.addWidget(
            self.import_translate_x, 0, 1, Qt.AlignRight | Qt.AlignVCenter
        )

        self.import_translate_y = QSpinBoxLabel("Y", LABEL_GREEN)
        self.import_translate_y.setRange(-10000, 10000)
        self.import_transform_layout.addWidget(
            self.import_translate_y, 0, 2, Qt.AlignRight | Qt.AlignVCenter
        )

        self.import_translate_z = QSpinBoxLabel("Z", LABEL_BLUE)
        self.import_translate_z.setRange(-10000, 10000)
        self.import_transform_layout.addWidget(
            self.import_translate_z, 0, 3, Qt.AlignRight | Qt.AlignVCenter
        )

        # Rotate

        self.import_rotate_label = QLabel("Rotate")
        self.import_transform_layout.addWidget(
            self.import_rotate_label, 1, 0, Qt.AlignLeft | Qt.AlignVCenter
        )

        self.import_rotate_x = QSpinBoxLabel("Pitch", LABEL_RED)
        self.import_rotate_x.setRange(0, 359)
        self.import_transform_layout.addWidget(
            self.import_rotate_x, 1, 1, Qt.AlignRight | Qt.AlignVCenter
        )

        self.import_rotate_y = QSpinBoxLabel("Yaw", LABEL_GREEN)
        self.import_rotate_y.setRange(0, 359)
        self.import_transform_layout.addWidget(
            self.import_rotate_y, 1, 2, Qt.AlignRight | Qt.AlignVCenter
        )

        self.import_rotate_z = QSpinBoxLabel("Roll", LABEL_BLUE)
        self.import_rotate_z.setRange(0, 359)
        self.import_transform_layout.addWidget(
            self.import_rotate_z, 1, 3, Qt.AlignRight | Qt.AlignVCenter
        )

        # Scale

        self.import_scale_label = QLabel("Scale")
        self.import_transform_layout.addWidget(
            self.import_scale_label, 2, 0, Qt.AlignLeft | Qt.AlignVCenter
        )

        self.import_scale_x = QSpinBoxLabel("X", LABEL_RED)
        self.import_scale_x.setRange(-10000, 10000)
        self.import_scale_x.setValue(DEFAULT_SCALE)
        self.import_transform_layout.addWidget(
            self.import_scale_x, 2, 1, Qt.AlignRight | Qt.AlignVCenter
        )

        self.import_scale_y = QSpinBoxLabel("Y", LABEL_GREEN)
        self.import_scale_y.setRange(-10000, 10000)
        self.import_scale_y.setValue(DEFAULT_SCALE)
        self.import_transform_layout.addWidget(
            self.import_scale_y, 2, 2, Qt.AlignRight | Qt.AlignVCenter
        )

        self.import_scale_z = QSpinBoxLabel("Z", LABEL_BLUE)
        self.import_scale_z.setRange(-10000, 10000)
        self.import_scale_z.setValue(DEFAULT_SCALE)
        self.import_transform_layout.addWidget(
            self.import_scale_z, 2, 3, Qt.AlignRight | Qt.AlignVCenter
        )

        # Import button
        self.import_button = QPushButton("Import")
        self.import_button.setMinimumSize(80, 40)
        self.import_button.clicked.connect(self.on_import_clicked)

        # Add all widgets to central layout
        self.central_widget_layout.addWidget(self.search_widget)
        self.central_widget_layout.addWidget(self.import_options_group)
        self.central_widget_layout.addWidget(self.import_transform_group)
        self.central_widget_layout.addWidget(self.import_button)

    def closeEvent(self, e) -> None:
        self.save_settings()

    def save_settings(self) -> None:
        self.settings.setValue("Path", self.search_line_edit.text())
        self.settings.setValue("Prefix", self.mesh_prefix_line_edit.text())
        self.settings.setValue("Indexes", self.mesh_index_line_edit.text())
        self.settings.setValue("MeshCount", self.mesh_count_spinbox.value())
        self.settings.setValue("FrameCount", self.frame_count_spinbox.value())

        self.settings.setValue("TranslateX", self.import_translate_x.value())
        self.settings.setValue("TranslateY", self.import_translate_y.value())
        self.settings.setValue("TranslateZ", self.import_translate_z.value())

        self.settings.setValue("RotationX", self.import_rotate_x.value())
        self.settings.setValue("RotationY", self.import_rotate_y.value())
        self.settings.setValue("RotationZ", self.import_rotate_z.value())

        self.settings.setValue("ScaleX", self.import_scale_x.value())
        self.settings.setValue("ScaleY", self.import_scale_y.value())
        self.settings.setValue("ScaleZ", self.import_scale_z.value())

    def load_settings(self) -> None:
        self.search_line_edit.setText(self.settings.value("Path", NINJA_RIPPER_PATH))
        self.mesh_prefix_line_edit.setText(
            self.settings.value("Prefix", DEFAULT_PREFIX)
        )
        self.mesh_index_line_edit.setText(self.settings.value("Indexes", ""))
        self.mesh_count_spinbox.setValue(self.settings.value("MeshCount", 0))
        self.frame_count_spinbox.setValue(self.settings.value("FrameCount", 0))

        self.import_translate_x.setValue(self.settings.value("TranslateX", 0))
        self.import_translate_y.setValue(self.settings.value("TranslateY", 0))
        self.import_translate_z.setValue(self.settings.value("TranslateZ", 0))

        self.import_rotate_x.setValue(
            self.settings.value("RotationX", DEFAULT_ROTATION.X)
        )
        self.import_rotate_y.setValue(
            self.settings.value("RotationY", DEFAULT_ROTATION.Y)
        )
        self.import_rotate_z.setValue(
            self.settings.value("RotationZ", DEFAULT_ROTATION.Z)
        )

        self.import_scale_x.setValue(self.settings.value("ScaleX", DEFAULT_SCALE))
        self.import_scale_y.setValue(self.settings.value("ScaleY", DEFAULT_SCALE))
        self.import_scale_z.setValue(self.settings.value("ScaleZ", DEFAULT_SCALE))

    def get_import_transform(self) -> tuple:
        translate = rt.Point3(
            self.import_translate_x.value(),
            self.import_translate_y.value(),
            self.import_translate_z.value(),
        )

        euler = rt.EulerAngles(
            self.import_rotate_x.value(),
            self.import_rotate_y.value(),
            self.import_rotate_z.value(),
        )
        rotation = rt.EulerToQuat(euler)

        scale = rt.Point3(
            self.import_scale_x.value(),
            self.import_scale_y.value(),
            self.import_scale_z.value(),
        )

        return translate, rotation, scale

    def guess_files(self):
        root = self.search_line_edit.text()
        files = glob(f"{root}\\*.nr")
        largest_size = 0
        largest_group = []
        for file in files:
            size = os.stat(file).st_size
            if size > largest_size:
                largest_group.clear()
                largest_size = size
                largest_group.append(file)
            elif size == largest_size:
                largest_group.append(file)

        frame_count = len(largest_group)
        mesh_count = (len(files) - 1) / frame_count

        self.mesh_count_spinbox.setValue(mesh_count + 1)
        self.frame_count_spinbox.setValue(frame_count - 1)

    def parse_indexes(self) -> list:
        indexes = []
        indexes_str = self.mesh_index_line_edit.text()
        for comonent in indexes_str.split(","):
            component = comonent.split("-")
            if len(component) == 1:
                indexes.append(int(component[0]))
            else:
                indexes.extend(list(range(int(component[0]), int(component[1]) + 1)))
        return indexes

    def find_files(
        self, root: str, indexes: list, mesh_count: int, frame_count: int
    ) -> List[str]:
        current_frame = 0
        files = []
        while current_frame <= frame_count:
            for index in indexes:
                mesh_index = (current_frame * mesh_count) + index
                filename = f"{root}\\mesh_{mesh_index}.nr"
                if os.path.exists(filename):
                    files.append(filename)
                else:
                    self.logger.warning(f"File {filename} doesn't exist.")
            current_frame += 1
        return files

    def chunk_files(self, files: List[str], size: int) -> Generator[str]:
        for i in range(0, len(files), size):
            yield files[i : i + size]

    def on_browse_clicked(self) -> None:
        caption = "Select a directory to search"
        text = self.search_line_edit.text()
        folder = QFileDialog.getExistingDirectory(self, caption, text)
        if folder:
            self.search_line_edit.setText(folder)
            self.logger.info(f"Setting search directory to {folder}")

    def on_import_clicked(self) -> None:
        translate, rotation, scale = self.get_import_transform()

        indexes = self.parse_indexes()
        root = self.search_line_edit.text()
        mesh_count = self.mesh_count_spinbox.value()
        frame_count = self.frame_count_spinbox.value()

        group_size = len(indexes)
        all_files = self.find_files(root, indexes, mesh_count, frame_count)
        collapsed_meshes = []
        for group in self.chunk_files(all_files, group_size):
            meshes_in_group = []
            for filename in group:
                import_file(filename)

                # Retrieve the imported mesh and set its name to prepend the frame
                name = os.path.splitext(os.path.basename(filename))[0]
                node = rt.GetNodeByName(name)
                if not rt.IsValidNode(node):
                    raise RuntimeError(f"Node not found: {name}")
                # node.name = f"{folder_name}_{name}"
                meshes_in_group.append(node)

                # Set default Transform, resolve normals, and convert to Edit Poly
                node.position = translate
                node.rotation = rotation
                node.scale = scale
                rt.AddModifier(node, rt.Weighted_Normals())
                rt.ResetXForm(node)
                rt.ConvertToPoly(node)
            while len(meshes_in_group) > 1:
                poly = meshes_in_group[0]
                source = meshes_in_group[1]
                rt.PolyOp.Attach(poly, source)
                meshes_in_group.pop(1)
            collapsed_meshes.append(meshes_in_group[0])

        # For each frame, copy each vertex from the target mesh to the source mesh
        frame_count = len(collapsed_meshes)
        frame = 1
        while len(collapsed_meshes) > 1:
            source = collapsed_meshes[0]
            target = collapsed_meshes[1]

            source_vert_count = rt.PolyOp.GetNumVerts(source)
            target_vert_count = rt.PolyOp.GetNumVerts(target)

            # Make sure source and target vertex count is the same
            if source_vert_count != target_vert_count:
                msg = (
                    f"Target node {target.name} vertex count ({target_vert_count})"
                    f"does not match source node {source.name} vertex "
                    f"count ({source_vert_count})."
                )
                QMessageBox.warning(
                    self,
                    "Vertex count mismatch",
                    msg,
                )
                return

            msg = (
                f"Baking vertices from {target.name} to {source.name} at frame {frame}"
            )

            self.logger.info(msg)
            bake_vertex_animation(source, target, source_vert_count, frame)

            frame += 1

            collapsed_meshes.pop(1)
            rt.Delete(target)

        # Set animation range from 0 to the frame count
        rt.AnimationRange = rt.Execute(f"Interval 0f {frame_count}f")


if __name__ == "__main__":
    w = NinjaRipperImportWindow()
    w.show()
