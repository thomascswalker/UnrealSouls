
g_versionStr = '1.0.8'

import os
import sys

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


########################################################################
# 3dsMax ver  pymxs MaxPlus   Comment                        Tested
########################################################################
# 2023        +     -                                        +
# 2022        +     -                                        +
# 2021        +     -         qtmax module                   -
# 2020        +     +                                        +
# 2019        +     +                                        -
# 2018        +     +                                        +
# 2017        +     +                                        +
# 2016.3      -     +         MaxPlus.AttachQWidgetToMax()   -
# 2016        -     +                                        +
# 2015        -     +                                        +
# 2014.1      -     +                                        -


#GetQMaxMainWindow
#GetQMaxWindow
#AttachQWidgetToMax

getMaxMainWindow = None
attachQWidgetToMax = None


# Detect parent windowing
try:
    #[2022-2021]
    from qtmax import GetQMaxMainWindow as getMaxMainWindow
    print("qtmax.GetQMaxMainWindow found")
except Exception as e:
    try:
        #[2020-2018]
        from MaxPlus import GetQMaxMainWindow as getMaxMainWindow
        print("MaxPlus.GetQMaxMainWindow found")
    except Exception as e:
        try:
            #[2017]
            from MaxPlus import GetQMaxWindow as getMaxMainWindow
            print("MaxPlus.GetQMaxWindow found")
        except Exception as e:
            try:
                #[2016.1]
                from MaxPlus import AttachQWidgetToMax as attachQWidgetToMax
                print("MaxPlus.AttachQWidgetToMax found")
            except Exception as e:
                print("NR2 addon: Window parenting API not supported or 3ds Max API not found")

import nrqtgui as gui
import nr3dsimp


class _GCProtector(object):
	widgets = []


class ImportLoop(object):
    def importMeshes(self, loadPostVs, fileNamesList, options):
        imp = nr3dsimp.MaxImporter()
        for fileName in fileNamesList:
            imp.importMesh(loadPostVs, fileName, options)
        imp.printInfo()


class ExtraGuiLayout(object):
    def __init__(self):
        self.convertToEditPoly = None

    def getOptions(self, options):
        options.materialCreateType = nr3dsimp.kMaterialCreateType.Single
        options.convertMeshTo = nr3dsimp.kConvertMeshTo.NoConvert
        if self.convertToEditPoly:
            if self.convertToEditPoly.isChecked():
                options.convertMeshTo = nr3dsimp.kConvertMeshTo.EditablePoly
                print("Convert to Editable Poly")
        return

    def createExtraGui(self, mainLayout):
        if nr3dsimp.isMaxPlusAvailable():
            horLayout = QHBoxLayout()
            self.convertToEditPoly = QCheckBox('Convert Mesh to Editable Poly (Slow)')
            horLayout.addWidget(self.convertToEditPoly)
            horLayout.addStretch()
            mainLayout.addLayout(horLayout)
        return


def mainImport(postVs):
    dlg = None

    importLoop = ImportLoop()
    guiOptions = gui.GuiOptions()
    guiOptions.versionStr = g_versionStr
    guiOptions.extraLayout = ExtraGuiLayout()
    guiOptions.loadNormalVectors = False

    # 3ds Max
    app = QApplication.instance()
    if not app:
        app = QApplication([])

    if getMaxMainWindow:
        if postVs:
            dlg = gui.PostVsImportGui(getMaxMainWindow(), importLoop, guiOptions)
        else:
            dlg = gui.PreVsImportGui(getMaxMainWindow(), importLoop, guiOptions)
    else:
        print("Can't get 3ds Max main window for using as parent")
        if postVs:
            dlg = gui.PostVsImportGui(None, importLoop, guiOptions)
        else:
            dlg = gui.PreVsImportGui(None, importLoop, guiOptions)

        if attachQWidgetToMax:
            print("Attach to parent window")
            attachQWidgetToMax(dlg)

    _GCProtector.widgets.append(dlg)
    dlg.show()
