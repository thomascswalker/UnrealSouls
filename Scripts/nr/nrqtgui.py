
import os
import sys

import nrfile
import nrtools
import nrdump
import nrimp


# GUI extra layout class
class GuiOptions(object):
    def __init__(self):
        self.versionStr = None
        self.extraLayout = None
        self.loadNormalVectors = False


try:
    from PySide2.QtWidgets import *
    from PySide2.QtCore    import *
    from PySide2.QtGui     import *
except Exception as e:
    try:
        from PySide.QtCore import *
        from PySide.QtGui  import *
    except Exception as e:
        print('PySide/PySide2: Not found')
        exit()



# UV-attribute idx
#  U-component idx
#  V-component idx
class TexcoordLoadAttribIndex(QWidget):
    def __init__(self, parent=None):
        super(TexcoordLoadAttribIndex, self).__init__(parent)
        mainLayout = QVBoxLayout(self)

        horLayout = QHBoxLayout()
        # UV-Attribute index
        gridLayout = QGridLayout()
        gridLayout.addWidget(QLabel("UV-Attribute Index"), 0, 0)
        self.uvAttrIndexSpinBox = QSpinBox()
        self.uvAttrIndexSpinBox.setRange(0, 64)
        self.uvAttrIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.uvAttrIndexSpinBox, 0, 1)

        # U-component index
        gridLayout.addWidget(QLabel("U/V-Component Index"), 1, 0)
        self.uCompIndexSpinBox = QSpinBox()
        self.uCompIndexSpinBox.setRange(0, 3)
        self.uCompIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.uCompIndexSpinBox, 1, 1)
        # V-component index
        self.vCompIndexSpinBox = QSpinBox()
        self.vCompIndexSpinBox.setRange(0, 3)
        self.vCompIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.vCompIndexSpinBox, 1, 2)

        horLayout.addLayout(gridLayout)
        horLayout.addStretch()

        mainLayout.addLayout(horLayout)
        mainLayout.addStretch()


    def getOptions(self, options):
        options.texcoordLoadMode = nrimp.TexcoordLoadMode.AttrCompIdx
        options.texAttrCompIdx_uAttrIdx = self.uvAttrIndexSpinBox.value()
        options.texAttrCompIdx_vAttrIdx = self.uvAttrIndexSpinBox.value()
        options.texAttrCompIdx_uCompIdx = self.uCompIndexSpinBox.value()
        options.texAttrCompIdx_vCompIdx = self.vCompIndexSpinBox.value()


# U-attribute idx/U-component idx
# V-attribute idx/V-component idx
class TexcoordLoadAttribCompIndex(QWidget):
    def __init__(self, parent=None):
        super(TexcoordLoadAttribCompIndex, self).__init__(parent)
        mainLayout = QVBoxLayout(self)

        horLayout = QHBoxLayout()

        gridLayout = QGridLayout()
        # U-attribute index
        gridLayout.addWidget(QLabel("U-Attribute/Component Index"), 0, 0)
        self.uAttrIndexSpinBox = QSpinBox()
        self.uAttrIndexSpinBox.setRange(0, 64)
        self.uAttrIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.uAttrIndexSpinBox, 0, 1)
        # U-component index
        self.uCompIndexSpinBox = QSpinBox()
        self.uCompIndexSpinBox.setRange(0, 3)
        self.uCompIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.uCompIndexSpinBox, 0, 2)

        # V-attribute index
        gridLayout.addWidget(QLabel("V-Attribute/Component Index"), 1, 0)
        self.vAttrIndexSpinBox = QSpinBox()
        self.vAttrIndexSpinBox.setRange(0, 64)
        self.vAttrIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.vAttrIndexSpinBox, 1, 1)
        # V-component index
        self.vCompIndexSpinBox = QSpinBox()
        self.vCompIndexSpinBox.setRange(0, 3)
        self.vCompIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.vCompIndexSpinBox, 1, 2)

        horLayout.addLayout(gridLayout)
        horLayout.addStretch()

        mainLayout.addLayout(horLayout)
        mainLayout.addStretch()


    def getOptions(self, options):
        options.texcoordLoadMode = nrimp.TexcoordLoadMode.AttrCompIdx
        options.texAttrCompIdx_uAttrIdx = self.uAttrIndexSpinBox.value()
        options.texAttrCompIdx_vAttrIdx = self.vAttrIndexSpinBox.value()
        options.texAttrCompIdx_uCompIdx = self.uCompIndexSpinBox.value()
        options.texAttrCompIdx_vCompIdx = self.vCompIndexSpinBox.value()


class TexcoordLoadAttribName(QWidget):
    def __init__(self, parent=None):
        super(TexcoordLoadAttribName, self).__init__(parent)
        mainLayout = QVBoxLayout(self)

        horLayout = QHBoxLayout()
        horLayout.addWidget(QLabel("Attribute Name"))
        self.attribName  = QLineEdit("TEXCOORD")
        horLayout.addWidget(self.attribName)
        horLayout.addStretch()
        mainLayout.addLayout(horLayout)


        horLayout = QHBoxLayout()
        gridLayout = QGridLayout()
        # U-coord index
        gridLayout.addWidget(QLabel("U/V-Component Index"), 0, 0)
        self.uCompIndexSpinBox = QSpinBox()
        self.uCompIndexSpinBox.setRange(0, 3)
        self.uCompIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.uCompIndexSpinBox, 0, 1)

        # V-coord index
        self.vCompIndexSpinBox = QSpinBox()
        self.vCompIndexSpinBox.setRange(0, 3)
        self.vCompIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.vCompIndexSpinBox, 0, 2)


        # UV-Index
        gridLayout.addWidget(QLabel("Assign Texture From Stage"), 1, 0)
        self.uvIndexSpinBox = QSpinBox()
        self.uvIndexSpinBox.setRange(0, 64)
        self.uvIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.uvIndexSpinBox, 1, 1)

        horLayout.addLayout(gridLayout)
        horLayout.addStretch()
        mainLayout.addLayout(horLayout)

        mainLayout.addStretch()


    def getOptions(self, options):
        options.texcoordLoadMode = nrimp.TexcoordLoadMode.AttrName
        options.texAttrName_attrName = self.attribName.text()
        options.texAttrName_uCompIdx = self.uCompIndexSpinBox.value()
        options.texAttrName_vCompIdx = self.vCompIndexSpinBox.value()
        options.texAttrName_uvIdx    = self.uvIndexSpinBox.value()


class TexcoordLoadAuto(QWidget):
    def __init__(self, parent=None):
        super(TexcoordLoadAuto, self).__init__(parent)

    def getOptions(self, options):
        options.texcoordLoadMode = nrimp.TexcoordLoadMode.Auto


class PostVsGeometryLoadMatrixFromLog(QWidget):
    def __init__(self, parent=None):
        super(PostVsGeometryLoadMatrixFromLog, self).__init__(parent)
        self.mainLayout = QVBoxLayout(self)

        horLayout = QHBoxLayout()
        #horLayout.addWidget(QLabel("Matrix"))
        self.matrixLineEdit = QLineEdit("[[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0],[0, 0, 0, 1]]")
        horLayout.addWidget(self.matrixLineEdit)
        self.mainLayout.addLayout(horLayout)

        horLayout = QHBoxLayout()
        self.transposeCheckBox = QCheckBox("Transpose")
        horLayout.addWidget(self.transposeCheckBox)
        horLayout.addStretch()
        self.mainLayout.addLayout(horLayout)

    def getOptions(self, options):
        projMat = nrtools.stringToMat44(self.matrixLineEdit.text())
        if self.transposeCheckBox.isChecked():
            projMat = nrtools.transposeMat(projMat)

        options.geometryLoadMode = nrimp.GeometryLoadMode.PostVs_Matrix
        options.projMat = projMat
        return


class PostVsGeometryLoadReprojFull(QWidget):
    def __init__(self, parent=None):
        super(PostVsGeometryLoadReprojFull, self).__init__(parent)
        self.mainLayout = QHBoxLayout(self)

        gridLayout = QGridLayout()
        # FOV
        gridLayout.addWidget(QLabel("FOV_Y"), 0, 0)
        self.fovSpinBox = QDoubleSpinBox()
        self.fovSpinBox.setRange(1, 360)
        self.fovSpinBox.setValue(45)
        self.fovSpinBox.setSingleStep(0.1)
        self.fovSpinBox.setDecimals(1)
        gridLayout.addWidget(self.fovSpinBox, 0, 1)

        # Space
        gridLayout.setRowStretch(1, 1)

        # Screen width
        gridLayout.addWidget(QLabel("Screen width"), 2, 0)
        self.screenWidth = QSpinBox()
        self.screenWidth.setRange(1, 10000)
        self.screenWidth.setValue(1024)
        gridLayout.addWidget(self.screenWidth, 2, 1)

        # Screen height
        gridLayout.addWidget(QLabel("Screen height"), 3, 0)
        self.screenHeight = QSpinBox()
        self.screenHeight.setRange(1, 10000)
        self.screenHeight.setValue(768)
        gridLayout.addWidget(self.screenHeight, 3, 1)

        # Space
        gridLayout.setRowStretch(4, 1)

        # Near distance
        gridLayout.addWidget(QLabel("Near"), 5, 0)
        self.nearDist = QDoubleSpinBox()
        self.nearDist.setRange(0.001, 10000)
        self.nearDist.setValue(0.01)
        self.nearDist.setSingleStep(0.01)
        gridLayout.addWidget(self.nearDist, 5, 1)

        # Far distance
        gridLayout.addWidget(QLabel("Far"), 6, 0)
        self.farDist = QSpinBox()
        self.farDist.setRange(1, 1000000)
        self.farDist.setValue(1000)
        gridLayout.addWidget(self.farDist, 6, 1)

        self.mainLayout.addLayout(gridLayout)
        self.mainLayout.addStretch()

    def getOptions(self, options):
        options.geometryLoadMode = nrimp.GeometryLoadMode.PostVs_Matrix
        fov      = float(self.fovSpinBox.value())
        width    = float(self.screenWidth.value())
        height   = float(self.screenHeight.value())
        nearDist = float(self.nearDist.value())
        farDist  = float(self.farDist.value())
        options.projMat = nrtools.perspMatFovLH(fov, width, height, nearDist, farDist)
        return


class PostVsGeometryLoadReprojFov(QWidget):
    def __init__(self, parent=None):
        super(PostVsGeometryLoadReprojFov, self).__init__(parent)
        self.mainLayout = QHBoxLayout(self)

        gridLayout = QGridLayout()
        # FOV
        gridLayout.addWidget(QLabel("FOV_Y"), 0, 0)
        self.fovSpinBox = QDoubleSpinBox()
        self.fovSpinBox.setRange(1, 360)
        self.fovSpinBox.setValue(45)
        self.fovSpinBox.setSingleStep(0.1)
        self.fovSpinBox.setDecimals(1)
        gridLayout.addWidget(self.fovSpinBox, 0, 1)

        self.mainLayout.addLayout(gridLayout)
        self.mainLayout.addStretch()

    def getOptions(self, options):
        options.geometryLoadMode = nrimp.GeometryLoadMode.PostVs_Fov
        options.fovY = float(self.fovSpinBox.value())
        return


class PreVsGeometryAuto(QWidget):
    def __init__(self, parent=None):
        super(PreVsGeometryAuto, self).__init__(parent)

    def getOptions(self, options):
        options.geometryLoadMode = nrimp.GeometryLoadMode.PreVs_Auto

# 1
# Position-attribute idx
#  X/Y/Z-component idx
class PreVsGeometryAttrib(QWidget):
    def __init__(self, parent=None):
        super(PreVsGeometryAttrib, self).__init__(parent)
        mainLayout = QVBoxLayout(self)

        horLayout = QHBoxLayout()
        # UV-Attribute index
        gridLayout = QGridLayout()
        gridLayout.addWidget(QLabel("Position-Attribute Index"), 0, 0)
        self.posAttrIndexSpinBox = QSpinBox()
        self.posAttrIndexSpinBox.setRange(0, 64)
        self.posAttrIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.posAttrIndexSpinBox, 0, 1)

        # X-component index
        gridLayout.addWidget(QLabel("X/Y/Z-Component Index"), 1, 0)
        self.xCompIndexSpinBox = QSpinBox()
        self.xCompIndexSpinBox.setRange(0, 3)
        self.xCompIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.xCompIndexSpinBox, 1, 1)
        # Y-component index
        self.yCompIndexSpinBox = QSpinBox()
        self.yCompIndexSpinBox.setRange(0, 3)
        self.yCompIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.yCompIndexSpinBox, 1, 2)
        # Z-component index
        self.zCompIndexSpinBox = QSpinBox()
        self.zCompIndexSpinBox.setRange(0, 3)
        self.zCompIndexSpinBox.setValue(2)
        gridLayout.addWidget(self.zCompIndexSpinBox, 1, 3)

        horLayout.addLayout(gridLayout)
        horLayout.addStretch()

        mainLayout.addLayout(horLayout)
        mainLayout.addStretch()

    def getOptions(self, options):
        options.geometryLoadMode = nrimp.GeometryLoadMode.PreVs_AttrCompIdx
        options.prevs_xAttrIdx = self.posAttrIndexSpinBox.value()
        options.prevs_yAttrIdx = self.posAttrIndexSpinBox.value()
        options.prevs_zAttrIdx = self.posAttrIndexSpinBox.value()
        options.prevs_xCompIdx = self.xCompIndexSpinBox.value()
        options.prevs_yCompIdx = self.yCompIndexSpinBox.value()
        options.prevs_zCompIdx = self.zCompIndexSpinBox.value()


# 2
class PreVsGeometryAttribComp(QWidget):
    def __init__(self, parent=None):
        super(PreVsGeometryAttribComp, self).__init__(parent)
        self.mainLayout = QVBoxLayout(self)

        horLayout = QHBoxLayout()

        gridLayout = QGridLayout()
        # X-attribute index
        gridLayout.addWidget(QLabel("X-Attribute/Component Index"), 0, 0)
        self.xAttrIndexSpinBox = QSpinBox()
        self.xAttrIndexSpinBox.setRange(0, 64)
        self.xAttrIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.xAttrIndexSpinBox, 0, 1)
        # X-component index
        self.xCompIndexSpinBox = QSpinBox()
        self.xCompIndexSpinBox.setRange(0, 3)
        self.xCompIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.xCompIndexSpinBox, 0, 2)


        # Y-attribute index
        gridLayout.addWidget(QLabel("Y-Attribute/Component Index"), 1, 0)
        self.yAttrIndexSpinBox = QSpinBox()
        self.yAttrIndexSpinBox.setRange(0, 64)
        self.yAttrIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.yAttrIndexSpinBox, 1, 1)
        # Y-component index
        self.yCompIndexSpinBox = QSpinBox()
        self.yCompIndexSpinBox.setRange(0, 3)
        self.yCompIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.yCompIndexSpinBox, 1, 2)


        # Z-attribute index
        gridLayout.addWidget(QLabel("Z-Attribute/Component Index"), 2, 0)
        self.zAttrIndexSpinBox = QSpinBox()
        self.zAttrIndexSpinBox.setRange(0, 64)
        self.zAttrIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.zAttrIndexSpinBox, 2, 1)
        # Z-component index
        self.zCompIndexSpinBox = QSpinBox()
        self.zCompIndexSpinBox.setRange(0, 3)
        self.zCompIndexSpinBox.setValue(2)
        gridLayout.addWidget(self.zCompIndexSpinBox, 2, 2)

        horLayout.addLayout(gridLayout)
        horLayout.addStretch()

        self.mainLayout.addLayout(horLayout)
        self.mainLayout.addStretch()


    def getOptions(self, options):
        options.geometryLoadMode = nrimp.GeometryLoadMode.PreVs_AttrCompIdx
        options.prevs_xAttrIdx = self.xAttrIndexSpinBox.value()
        options.prevs_yAttrIdx = self.yAttrIndexSpinBox.value()
        options.prevs_zAttrIdx = self.zAttrIndexSpinBox.value()
        options.prevs_xCompIdx = self.xCompIndexSpinBox.value()
        options.prevs_yCompIdx = self.yCompIndexSpinBox.value()
        options.prevs_zCompIdx = self.zCompIndexSpinBox.value()


class NormalVectorsLoadAuto(QWidget):
    def __init__(self, parent=None):
        super(NormalVectorsLoadAuto, self).__init__(parent)

    def getOptions(self, options):
        options.normalVectorsLoadMode = nrimp.NormalVectorsLoadMode.Auto

class NormalVectorsLoadDisabled(QWidget):
    def __init__(self, parent=None):
        super(NormalVectorsLoadDisabled, self).__init__(parent)

    def getOptions(self, options):
        options.normalVectorsLoadMode = nrimp.NormalVectorsLoadMode.Disabled


class NormalVectorsLoadAttrib(QWidget):
    def __init__(self, parent=None):
        super(NormalVectorsLoadAttrib, self).__init__(parent)
        mainLayout = QVBoxLayout(self)

        horLayout = QHBoxLayout()
        # Normal Vectors-Attribute index
        gridLayout = QGridLayout()
        gridLayout.addWidget(QLabel("Normal Vector Attribute Index"), 0, 0)
        self.normAttrIndexSpinBox = QSpinBox()
        self.normAttrIndexSpinBox.setRange(0, 64)
        self.normAttrIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.normAttrIndexSpinBox, 0, 1)

        # X-component index
        gridLayout.addWidget(QLabel("X/Y/Z-Component Index"), 1, 0)
        self.xCompIndexSpinBox = QSpinBox()
        self.xCompIndexSpinBox.setRange(0, 3)
        self.xCompIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.xCompIndexSpinBox, 1, 1)
        # Y-component index
        self.yCompIndexSpinBox = QSpinBox()
        self.yCompIndexSpinBox.setRange(0, 3)
        self.yCompIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.yCompIndexSpinBox, 1, 2)
        # Z-component index
        self.zCompIndexSpinBox = QSpinBox()
        self.zCompIndexSpinBox.setRange(0, 3)
        self.zCompIndexSpinBox.setValue(2)
        gridLayout.addWidget(self.zCompIndexSpinBox, 1, 3)

        horLayout.addLayout(gridLayout)
        horLayout.addStretch()

        mainLayout.addLayout(horLayout)
        mainLayout.addStretch()


    def getOptions(self, options):
        options.normalVectorsLoadMode = nrimp.NormalVectorsLoadMode.AttrCompIdx
        options.normal_xAttrIdx = self.normAttrIndexSpinBox.value()
        options.normal_yAttrIdx = self.normAttrIndexSpinBox.value()
        options.normal_zAttrIdx = self.normAttrIndexSpinBox.value()
        options.normal_xCompIdx = self.xCompIndexSpinBox.value()
        options.normal_yCompIdx = self.yCompIndexSpinBox.value()
        options.normal_zCompIdx = self.zCompIndexSpinBox.value()


class NormalVectorsLoadAttribComp(QWidget):
    def __init__(self, parent=None):
        super(NormalVectorsLoadAttribComp, self).__init__(parent)
        self.mainLayout = QVBoxLayout(self)

        horLayout = QHBoxLayout()

        gridLayout = QGridLayout()
        # X-attribute index
        gridLayout.addWidget(QLabel("X-Attribute/Component Index"), 0, 0)
        self.xAttrIndexSpinBox = QSpinBox()
        self.xAttrIndexSpinBox.setRange(0, 64)
        self.xAttrIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.xAttrIndexSpinBox, 0, 1)
        # X-component index
        self.xCompIndexSpinBox = QSpinBox()
        self.xCompIndexSpinBox.setRange(0, 3)
        self.xCompIndexSpinBox.setValue(0)
        gridLayout.addWidget(self.xCompIndexSpinBox, 0, 2)


        # Y-attribute index
        gridLayout.addWidget(QLabel("Y-Attribute/Component Index"), 1, 0)
        self.yAttrIndexSpinBox = QSpinBox()
        self.yAttrIndexSpinBox.setRange(0, 64)
        self.yAttrIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.yAttrIndexSpinBox, 1, 1)
        # Y-component index
        self.yCompIndexSpinBox = QSpinBox()
        self.yCompIndexSpinBox.setRange(0, 3)
        self.yCompIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.yCompIndexSpinBox, 1, 2)


        # Z-attribute index
        gridLayout.addWidget(QLabel("Z-Attribute/Component Index"), 2, 0)
        self.zAttrIndexSpinBox = QSpinBox()
        self.zAttrIndexSpinBox.setRange(0, 64)
        self.zAttrIndexSpinBox.setValue(1)
        gridLayout.addWidget(self.zAttrIndexSpinBox, 2, 1)
        # Z-component index
        self.zCompIndexSpinBox = QSpinBox()
        self.zCompIndexSpinBox.setRange(0, 3)
        self.zCompIndexSpinBox.setValue(2)
        gridLayout.addWidget(self.zCompIndexSpinBox, 2, 2)

        horLayout.addLayout(gridLayout)
        horLayout.addStretch()

        self.mainLayout.addLayout(horLayout)
        self.mainLayout.addStretch()


    def getOptions(self, options):
        options.normalVectorsLoadMode = nrimp.NormalVectorsLoadMode.AttrCompIdx
        options.normal_xAttrIdx = self.xAttrIndexSpinBox.value()
        options.normal_yAttrIdx = self.yAttrIndexSpinBox.value()
        options.normal_zAttrIdx = self.zAttrIndexSpinBox.value()
        options.normal_xCompIdx = self.xCompIndexSpinBox.value()
        options.normal_yCompIdx = self.yCompIndexSpinBox.value()
        options.normal_zCompIdx = self.zCompIndexSpinBox.value()


class PostVsImportGui(QDialog):
    def __init__(self, parent, importLoop, guiOptions):
        super(PostVsImportGui, self).__init__(parent)
 
        self.importLoop = importLoop
        self.guiOptions = guiOptions

        self.setWindowTitle("Ninja Ripper 2 World Space Import  {}".format(self.guiOptions.versionStr))
        self.setWindowFlags(self.windowFlags() & ~Qt.WindowContextHelpButtonHint);

        # User selected files
        self.fileNamesList = []

        # Main Vertical layout
        self.mainLayout = QVBoxLayout(self)

        # File select button and Horizontal layout
        horLayout = QHBoxLayout()
        button = QPushButton("Select Files")
        horLayout.addWidget(button)
        self.mainLayout.addLayout(horLayout)
        button.clicked.connect(self.filesSelectSlot)

        # Geometry reconstruction layout
        self.geometryLayout = QVBoxLayout()
        horLayout = QHBoxLayout()
        horLayout.addWidget(QLabel("Geometry Load"))
        self.geometryCombo = QComboBox()
        self.geometryCombo.addItem("Reprojection (FOV)")   # 0
        self.geometryCombo.addItem("Reprojection (Full)")  # 1
        self.geometryCombo.addItem("Matrix From Log")      # 2
        self.geometryCombo.currentIndexChanged.connect(self.geometryComboChangeSlot)
        horLayout.addWidget(self.geometryCombo)
        horLayout.addStretch()
        self.geometryLayout.addLayout(horLayout)
        self.geometry = PostVsGeometryLoadReprojFov() # Default
        self.geometryLayout.addWidget(self.geometry)
        self.mainLayout.addLayout(self.geometryLayout)
        
        self.mainLayout.addStretch()

        # Texcoord load
        self.texcoordLoadLayoutMain = QVBoxLayout()
        horLayout = QHBoxLayout()
        horLayout.addWidget(QLabel("Texcoord Load"))
        self.texcoordLoadCombo = QComboBox()
        self.texcoordLoadCombo.addItem("Auto")                      # 0
        self.texcoordLoadCombo.addItem("Attribute Name")            # 1
        self.texcoordLoadCombo.addItem("Attribute Index")           # 2
        self.texcoordLoadCombo.addItem("Attribute/Component Index") # 3
        horLayout.addWidget(self.texcoordLoadCombo)

        horLayout.addStretch()
        self.texcoordLoadLayoutMain.addLayout(horLayout)
        self.texcoordLoadCombo.currentIndexChanged.connect(self.texcoordLoadComboChangeSlot)

        # Set default widget
        self.texcoordLoadLayout = QVBoxLayout()
        self.texcoordLoadDlg = TexcoordLoadAuto()
        self.texcoordLoadLayout.addWidget(self.texcoordLoadDlg)
        self.texcoordLoadLayoutMain.addLayout(self.texcoordLoadLayout)
        self.mainLayout.addLayout(self.texcoordLoadLayoutMain)
        horLayout.addStretch()


        # Texture Slot
        horLayout = QHBoxLayout()
        horLayout.addWidget(QLabel("Texture Slot"))
        self.textureSlotSpinBox = QSpinBox()
        self.textureSlotSpinBox.setRange(0, 64)
        self.textureSlotSpinBox.setValue(0)
        horLayout.addWidget(self.textureSlotSpinBox)
        horLayout.addStretch()
        self.mainLayout.addLayout(horLayout)

        horLayout.addStretch()

        # Normal Vectors load
        self.normalVectorsLoadDlg = None
        if self.guiOptions.loadNormalVectors:
            self.normalVectorsLoadLayoutMain = QVBoxLayout()
            horLayout = QHBoxLayout()
            horLayout.addWidget(QLabel("Normal Vectors Load"))
            self.normalVectorsLoadCombo = QComboBox()
            self.normalVectorsLoadCombo.addItem("Auto")                      # 0
            self.normalVectorsLoadCombo.addItem("Disabled")                  # 1
            self.normalVectorsLoadCombo.addItem("Attribute Index")           # 2
            self.normalVectorsLoadCombo.addItem("Attribute/Component Index") # 3
            horLayout.addWidget(self.normalVectorsLoadCombo)

            horLayout.addStretch()
            self.normalVectorsLoadLayoutMain.addLayout(horLayout)
            self.normalVectorsLoadCombo.currentIndexChanged.connect(self.normalVectorsLoadComboChangeSlot)

            # Set default widget
            self.normalVectorsLoadLayout = QVBoxLayout()
            self.normalVectorsLoadDlg = NormalVectorsLoadAuto()
            self.normalVectorsLoadLayout.addWidget(self.normalVectorsLoadDlg)
            self.normalVectorsLoadLayoutMain.addLayout(self.normalVectorsLoadLayout)
            self.mainLayout.addLayout(self.normalVectorsLoadLayoutMain)

            self.mainLayout.addStretch()



        # loadExtraUvData check box
        horLayout = QHBoxLayout()
        self.loadExtraUvData = QCheckBox('Get Texcoords From Local Space')
        horLayout.addWidget(self.loadExtraUvData)
        self.mainLayout.addLayout(horLayout)
        # ignoreMeshesWithoutTextures check box
        horLayout = QHBoxLayout()
        self.ignoreMeshesWithoutTextures = QCheckBox('Don\'t load meshes without textures')
        self.ignoreMeshesWithoutTextures.setChecked(False);
        horLayout.addWidget(self.ignoreMeshesWithoutTextures)
        self.mainLayout.addLayout(horLayout)

        self.mainLayout.addStretch()




        # EXTRA LAYOUT
        if self.guiOptions.extraLayout:
            self.guiOptions.extraLayout.createExtraGui(self.mainLayout)
            self.mainLayout.addStretch()


        # Import button
        horLayout = QHBoxLayout()
        self.importButton = QPushButton("Import")
        self.importButton.setMinimumHeight(30)
        horLayout.addWidget(self.importButton)
        self.mainLayout.addLayout(horLayout)
        self.importButton.clicked.connect(self.importSlot)

        self.mainLayout.addStretch()


    @Slot()
    def filesSelectSlot(self):
        outDir = nrtools.getNrOutputDir()
        if outDir:
            dialog = QFileDialog(self, "Select files", outDir)
        else:
            dialog = QFileDialog(self, "Select files")
        dialog.setFileMode(QFileDialog.ExistingFiles)
        dialog.setNameFilter("Ninja Ripper 2 files (*.nr)")
        if dialog.exec_():
            self.fileNamesList = dialog.selectedFiles();


    @Slot()
    def geometryComboChangeSlot(self, idx):
        if 0 == idx:
            self.geometry.deleteLater()
            self.geometry = None
            self.geometry = PostVsGeometryLoadReprojFov()
            self.geometryLayout.addWidget(self.geometry)
        elif 1 == idx:
            self.geometry.deleteLater()
            self.geometry = None
            self.geometry = PostVsGeometryLoadReprojFull()
            self.geometryLayout.addWidget(self.geometry)
        elif 2 == idx:
            self.geometry.deleteLater()
            self.geometry = None
            self.geometry = PostVsGeometryLoadMatrixFromLog()
            self.geometryLayout.addWidget(self.geometry)


    @Slot()
    def texcoordLoadComboChangeSlot(self, idx):
        #print("TextureLoadIdx={:d}".format(idx))
        if 0 == idx:
            self.texcoordLoadDlg.deleteLater()
            self.texcoordLoadDlg = TexcoordLoadAuto()
            self.texcoordLoadLayout.addWidget(self.texcoordLoadDlg)
        if 1 == idx:
            self.texcoordLoadDlg.deleteLater()
            self.texcoordLoadDlg = TexcoordLoadAttribName()
            self.texcoordLoadLayout.addWidget(self.texcoordLoadDlg)
        if 2 == idx:
            self.texcoordLoadDlg.deleteLater()
            self.texcoordLoadDlg = TexcoordLoadAttribIndex()
            self.texcoordLoadLayout.addWidget(self.texcoordLoadDlg)
        if 3 == idx:
            self.texcoordLoadDlg.deleteLater()
            self.texcoordLoadDlg = TexcoordLoadAttribCompIndex()
            self.texcoordLoadLayout.addWidget(self.texcoordLoadDlg)


    @Slot()
    def normalVectorsLoadComboChangeSlot(self, idx):
        #print("NormaVectorsLoadIdx={}".format(idx))
        if 0 == idx:
            self.normalVectorsLoadDlg.deleteLater()
            self.normalVectorsLoadDlg = NormalVectorsLoadAuto()
            self.normalVectorsLoadLayout.addWidget(self.normalVectorsLoadDlg)
        if 1 == idx:
            self.normalVectorsLoadDlg.deleteLater()
            self.normalVectorsLoadDlg = NormalVectorsLoadDisabled()
            self.normalVectorsLoadLayout.addWidget(self.normalVectorsLoadDlg)
        if 2 == idx:
            self.normalVectorsLoadDlg.deleteLater()
            self.normalVectorsLoadDlg = NormalVectorsLoadAttrib()
            self.normalVectorsLoadLayout.addWidget(self.normalVectorsLoadDlg)
        if 3 == idx:
            self.normalVectorsLoadDlg.deleteLater()
            self.normalVectorsLoadDlg = NormalVectorsLoadAttribComp()
            self.normalVectorsLoadLayout.addWidget(self.normalVectorsLoadDlg)


    def getOptions(self):
        options = nrimp.ImportOptions()

        # Geometry parameters
        self.geometry.getOptions(options)

        # Texcoord load parameters
        self.texcoordLoadDlg.getOptions(options)
        options.loadExtraUvData = False
        if self.loadExtraUvData.isChecked():
            options.loadExtraUvData = True

        options.ignoreMeshesWithoutTextures = False
        if self.ignoreMeshesWithoutTextures.isChecked():
            options.ignoreMeshesWithoutTextures = True

        # Texture slot
        options.textureSlotIdx = self.textureSlotSpinBox.value()

        # Normal Vectors
        if self.normalVectorsLoadDlg:
            self.normalVectorsLoadDlg.getOptions(options)

        # EXTRA LAYOUT
        if self.guiOptions.extraLayout:
            self.guiOptions.extraLayout.getOptions(options)

        return options

    @Slot()
    def importSlot(self):
        if len(self.fileNamesList):
            options = self.getOptions()
            options.dump()
            print("Import started")
            self.importLoop.importMeshes(True, self.fileNamesList, options)
            print("Import finished")
        else:
            print("No nr-files selected")


#####################################################################
#####################################################################


class PreVsImportGui(QDialog):
    def __init__(self, parent, importLoop, guiOptions):
        super(PreVsImportGui, self).__init__(parent)

        self.importLoop = importLoop
        self.guiOptions = guiOptions

        self.setWindowTitle("Ninja Ripper 2 Local Space Import  {}".format(self.guiOptions.versionStr))
        self.setWindowFlags(self.windowFlags() & ~Qt.WindowContextHelpButtonHint);

        # User selected files
        self.fileNamesList = []

        # Main Vertical layout
        self.mainLayout = QVBoxLayout(self)

        # File select button and Horizontal layout
        horLayout = QHBoxLayout()
        button = QPushButton("Select Files")
        horLayout.addWidget(button)
        self.mainLayout.addLayout(horLayout)
        button.clicked.connect(self.filesSelectSlot)

        # Geometry reconstruction layout
        self.geometryLayout = QVBoxLayout()
        horLayout = QHBoxLayout()
        horLayout.addWidget(QLabel("Geometry Load"))
        self.geometryCombo = QComboBox()
        self.geometryCombo.addItem("Auto")                      # 0
        self.geometryCombo.addItem("Attribute Index")           # 1
        self.geometryCombo.addItem("Attribute/Component Index") # 2
        self.geometryCombo.currentIndexChanged.connect(self.geometryComboChangeSlot)
        horLayout.addWidget(self.geometryCombo)
        horLayout.addStretch()
        self.geometryLayout.addLayout(horLayout)
        self.geometry = PreVsGeometryAuto() # Default
        self.geometryLayout.addWidget(self.geometry)
        self.mainLayout.addLayout(self.geometryLayout)
        
        self.mainLayout.addStretch()

        # Texturing reconstruction
        self.texcoordLoadLayoutMain = QVBoxLayout()

        horLayout = QHBoxLayout()
        horLayout.addWidget(QLabel("Texcoord Load"))
        self.texcoordLoadCombo = QComboBox()
        self.texcoordLoadCombo.addItem("Auto")                      # 0
        self.texcoordLoadCombo.addItem("Attribute Name")            # 1
        self.texcoordLoadCombo.addItem("Attribute Index")           # 2
        self.texcoordLoadCombo.addItem("Attribute/Component Index") # 3
        horLayout.addWidget(self.texcoordLoadCombo)

        horLayout.addStretch()
        self.texcoordLoadLayoutMain.addLayout(horLayout)
        self.texcoordLoadCombo.currentIndexChanged.connect(self.texcoordLoadComboChangeSlot)


        # Set default widget
        self.texcoordLoadLayout = QVBoxLayout()
        self.texcoordLoadDlg = TexcoordLoadAuto()
        self.texcoordLoadLayout.addWidget(self.texcoordLoadDlg)
        self.texcoordLoadLayoutMain.addLayout(self.texcoordLoadLayout)
        self.mainLayout.addLayout(self.texcoordLoadLayoutMain)


        # Texture Slot
        horLayout = QHBoxLayout()
        horLayout.addWidget(QLabel("Texture Slot"))
        self.textureSlotSpinBox = QSpinBox()
        self.textureSlotSpinBox.setRange(0, 64)
        self.textureSlotSpinBox.setValue(0)
        horLayout.addWidget(self.textureSlotSpinBox)
        horLayout.addStretch()
        self.mainLayout.addLayout(horLayout)


        # Check box
        horLayout = QHBoxLayout()
        self.checkBox = QCheckBox('Get Texcoords From World Space')
        horLayout.addWidget(self.checkBox)
        self.mainLayout.addLayout(horLayout)

        self.mainLayout.addStretch()



        # Normal Vectors load
        self.normalVectorsLoadDlg = None
        if self.guiOptions.loadNormalVectors:
            self.normalVectorsLoadLayoutMain = QVBoxLayout()
            horLayout = QHBoxLayout()
            horLayout.addWidget(QLabel("Normal Vectors Load"))
            self.normalVectorsLoadCombo = QComboBox()
            self.normalVectorsLoadCombo.addItem("Auto")                      # 0
            self.normalVectorsLoadCombo.addItem("Disabled")                  # 1
            self.normalVectorsLoadCombo.addItem("Attribute Index")           # 2
            self.normalVectorsLoadCombo.addItem("Attribute/Component Index") # 3
            horLayout.addWidget(self.normalVectorsLoadCombo)

            horLayout.addStretch()
            self.normalVectorsLoadLayoutMain.addLayout(horLayout)
            self.normalVectorsLoadCombo.currentIndexChanged.connect(self.normalVectorsLoadComboChangeSlot)

            # Set default widget
            self.normalVectorsLoadLayout = QVBoxLayout()
            self.normalVectorsLoadDlg = NormalVectorsLoadAuto()
            self.normalVectorsLoadLayout.addWidget(self.normalVectorsLoadDlg)
            self.normalVectorsLoadLayoutMain.addLayout(self.normalVectorsLoadLayout)
            self.mainLayout.addLayout(self.normalVectorsLoadLayoutMain)

            self.mainLayout.addStretch()

        # EXTRA LAYOUT
        if self.guiOptions.extraLayout:
            self.guiOptions.extraLayout.createExtraGui(self.mainLayout)
            self.mainLayout.addStretch()



        # Import button
        horLayout = QHBoxLayout()
        self.importButton = QPushButton("Import")
        self.importButton.setMinimumHeight(30)
        horLayout.addWidget(self.importButton)
        self.mainLayout.addLayout(horLayout)
        self.importButton.clicked.connect(self.importSlot)

        self.mainLayout.addStretch()

    @Slot()
    def filesSelectSlot(self):
        outDir = nrtools.getNrOutputDir()
        if outDir:
            dialog = QFileDialog(self, "Select files", outDir)
        else:
            dialog = QFileDialog(self, "Select files")
        dialog.setFileMode(QFileDialog.ExistingFiles)
        dialog.setNameFilter("Ninja Ripper 2 files (*.nr)")
        if dialog.exec_():
            self.fileNamesList = dialog.selectedFiles();

    @Slot()
    def geometryComboChangeSlot(self, idx):
        if 0 == idx:
            self.geometry.deleteLater()
            self.geometry = None
            self.geometry = PreVsGeometryAuto()
            self.geometryLayout.addWidget(self.geometry)
        if 1 == idx:
            self.geometry.deleteLater()
            self.geometry = None
            self.geometry = PreVsGeometryAttrib()
            self.geometryLayout.addWidget(self.geometry)
        if 2 == idx:
            self.geometry.deleteLater()
            self.geometry = None
            self.geometry = PreVsGeometryAttribComp()
            self.geometryLayout.addWidget(self.geometry)

    @Slot()
    def texcoordLoadComboChangeSlot(self, idx):
        #print("TextureLoadIdx={:d}".format(idx))
        if 0 == idx:
            self.texcoordLoadDlg.deleteLater()
            self.texcoordLoadDlg = TexcoordLoadAuto()
            self.texcoordLoadLayout.addWidget(self.texcoordLoadDlg)
        if 1 == idx:
            self.texcoordLoadDlg.deleteLater()
            self.texcoordLoadDlg = TexcoordLoadAttribName()
            self.texcoordLoadLayout.addWidget(self.texcoordLoadDlg)
        if 2 == idx:
            self.texcoordLoadDlg.deleteLater()
            self.texcoordLoadDlg = TexcoordLoadAttribIndex()
            self.texcoordLoadLayout.addWidget(self.texcoordLoadDlg)
        if 3 == idx:
            self.texcoordLoadDlg.deleteLater()
            self.texcoordLoadDlg = TexcoordLoadAttribCompIndex()
            self.texcoordLoadLayout.addWidget(self.texcoordLoadDlg)


    @Slot()
    def normalVectorsLoadComboChangeSlot(self, idx):
        #print("NormaVectorsLoadIdx={}".format(idx))
        if 0 == idx:
            self.normalVectorsLoadDlg.deleteLater()
            self.normalVectorsLoadDlg = NormalVectorsLoadAuto()
            self.normalVectorsLoadLayout.addWidget(self.normalVectorsLoadDlg)
        if 1 == idx:
            self.normalVectorsLoadDlg.deleteLater()
            self.normalVectorsLoadDlg = NormalVectorsLoadDisabled()
            self.normalVectorsLoadLayout.addWidget(self.normalVectorsLoadDlg)
        if 2 == idx:
            self.normalVectorsLoadDlg.deleteLater()
            self.normalVectorsLoadDlg = NormalVectorsLoadAttrib()
            self.normalVectorsLoadLayout.addWidget(self.normalVectorsLoadDlg)
        if 3 == idx:
            self.normalVectorsLoadDlg.deleteLater()
            self.normalVectorsLoadDlg = NormalVectorsLoadAttribComp()
            self.normalVectorsLoadLayout.addWidget(self.normalVectorsLoadDlg)


    def getOptions(self):
        options = nrimp.ImportOptions()

        # Geometry parameters
        self.geometry.getOptions(options)

        # Texcoord load parameters
        self.texcoordLoadDlg.getOptions(options)
        options.loadExtraUvData = False
        if self.checkBox.isChecked():
            options.loadExtraUvData = True

        # Texture slot
        options.textureSlotIdx = self.textureSlotSpinBox.value()

        # Normal vectors load options
        if self.normalVectorsLoadDlg:
            self.normalVectorsLoadDlg.getOptions(options)

        # EXTRA LAYOUT
        if self.guiOptions.extraLayout:
            self.guiOptions.extraLayout.getOptions(options)

        return options


    @Slot()
    def importSlot(self):
        if len(self.fileNamesList):
            options = self.getOptions()
            options.dump()
            print("Import started")
            self.importLoop.importMeshes(False, self.fileNamesList, options)
            print("Import finished")
        else:
            print("No nr-files selected")
