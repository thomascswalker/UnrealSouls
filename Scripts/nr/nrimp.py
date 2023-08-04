
import os
import sys
import struct


class GeometryLoadMode:
    PreVs_Auto   = 1     # Attribute calculated in importMesh()
    PreVs_AttrCompIdx = 2
    PostVs_Matrix = 3    # Exact Projection Matrix
    PostVs_Fov    = 4    # Projection Fov. (Width+Heigh readed from .nr)


class TexcoordLoadMode:
    Auto        = 0  # uAttrIdx/uCompIdx and vAttrIdx/vCompIdx  calculated in importMesh()
    AttrName    = 1
    AttrCompIdx = 2


class NormalVectorsLoadMode:
    Disabled   = 0
    Auto       = 1 # attrIdx/compIdx calculated in importMesh()
    AttrCompIdx= 2


class ImportOptions(object):
    def __init__(self):
        self.materialCreateType = 0
        self.geometryLoadMode = GeometryLoadMode.PreVs_Auto
        # PostVsMatrix position reconstruction
        # 45.0/1024/768/0.01/1000
        self.projMat = [[1.8106601717798212, 0.0, 0.0, 0.0], [0.0, 2.414213562373095, 0.0, 0.0], [0.0, 0.0, 1.000010000100001, 1.0], [0.0, 0.0, -0.01000010000100001, 0.0]]
        # PostVsFov
        self.fovY = 45.0
        # PreVS position
        self.prevs_xAttrIdx = 0
        self.prevs_yAttrIdx = 0
        self.prevs_zAttrIdx = 0
        self.prevs_xCompIdx = 0
        self.prevs_yCompIdx = 1
        self.prevs_zCompIdx = 2
        ##########################################################################
        # Texture-UV load
        self.texcoordLoadMode = TexcoordLoadMode.Auto
        self.textureSlotIdx = 0       # Default texture slot index used as 'Diffuse'
        self.loadExtraUvData = False  # World--> Local   Local-->World
        # ATTRNAME
        self.texAttrName_attrName = 'TEXCOORD'
        self.texAttrName_uCompIdx = 0
        self.texAttrName_vCompIdx = 1
        self.texAttrName_uvIdx    = 0 # Default UV-index
        # ATTRCOMP_INDEX
        self.texAttrCompIdx_uAttrIdx = 1
        self.texAttrCompIdx_uCompIdx = 0
        self.texAttrCompIdx_vAttrIdx = 1
        self.texAttrCompIdx_vCompIdx = 1
        ##########################################################################
        # Normals load params
        self.normalVectorsLoadMode = NormalVectorsLoadMode.Disabled
        self.normal_xAttrIdx = 2
        self.normal_yAttrIdx = 2
        self.normal_zAttrIdx = 2
        self.normal_xCompIdx = 0
        self.normal_yCompIdx = 1
        self.normal_zCompIdx = 2
        ##########################################################################
        # Vertex Colors load params
        #  TODO: .......
        self.ignoreMeshesWithoutTextures = False


    def dump(self):
        if GeometryLoadMode.PreVs_AttrCompIdx == self.geometryLoadMode:
            print("geomLoadMode=PreVs_AttrCompIdx. xAttrIdx={:d} yAttrIdx={:d} zAttrIdx={:d}   xCompIdx={:d} yCompIdx={:d} zCompIdx={:d}".format(self.prevs_xAttrIdx, self.prevs_yAttrIdx, self.prevs_zAttrIdx, self.prevs_xCompIdx, self.prevs_yCompIdx, self.prevs_zCompIdx))
        elif GeometryLoadMode.PreVs_Auto == self.geometryLoadMode:
            print("geomLoadMode=PreVs_Auto")
        elif GeometryLoadMode.PostVs_Matrix == self.geometryLoadMode:
            print("geomLoadMode=PostVs_Matrix. projMat: {:s}".format(str(self.projMat)))
        elif GeometryLoadMode.PostVs_Fov == self.geometryLoadMode:
            print("geomLoadMode=PostVs_Fov fovY={}".format(self.fovY))

        print("textureSlotIdx={}".format(self.textureSlotIdx))
        print("loadExtraUvData={}".format((self.loadExtraUvData)))
        print("ignoreMeshesWithoutTextures={}".format((self.ignoreMeshesWithoutTextures)))

        if TexcoordLoadMode.Auto == self.texcoordLoadMode:
            print("texcoordLoadMode=Auto")
        elif TexcoordLoadMode.AttrName == self.texcoordLoadMode:
            print("texcoordLoadMode=AttrName. {:s} uCompIdx={:d} vCompIdx={:d} uvIdx={:d}".format(self.texAttrName_attrName, self.texAttrName_uCompIdx, self.texAttrName_vCompIdx, self.texAttrName_uvIdx))
        elif TexcoordLoadMode.AttrCompIdx == self.texcoordLoadMode:
            print("texcoordLoadMode=AttrCompIdx. uAttrIdx={:d} uCompIdx={:d}  vAttrIdx={:d} vCompIdx={:d}".format(self.texAttrCompIdx_uAttrIdx, self.texAttrCompIdx_uCompIdx, self.texAttrCompIdx_vAttrIdx, self.texAttrCompIdx_vCompIdx))

        if NormalVectorsLoadMode.Auto == self.normalVectorsLoadMode:
            print("normalVectorsLoadMode=Auto")
        elif NormalVectorsLoadMode.Disabled == self.normalVectorsLoadMode:
            print("normalVectorsLoadMode=Disabled")
        elif NormalVectorsLoadMode.AttrCompIdx == self.normalVectorsLoadMode:
            print("normalVectorsLoadMode=AttrCompIdx. xAttrIdx={:d} xCompIdx={:d}  yAttrIdx={:d} yCompIdx={:d}  zAttrIdx={:d} zCompIdx={:d}".format(self.normal_xAttrIdx, self.normal_xCompIdx, self.normal_yAttrIdx, self.normal_yCompIdx, self.normal_zAttrIdx, self.normal_zCompIdx))



# UnrealEngine 4? PreVs Layout
#ATTRIBUTE: x=0.588235 y=0.113725 z=0.803922 w=0.501961   Normal
#ATTRIBUTE: x=0.701961 y=0.811765 z=0.831373 w=1          Normal
#ATTRIBUTE: x=72.4522 y=2.471 z=151.232                   Position
#ATTRIBUTE: x=0.195679 y=0.789551                         Texcoord0
#ATTRIBUTE: x=0.195679 y=0.789551 
#ATTRIBUTE: x=0.195679 y=0.789551 
#ATTRIBUTE: x=0.195679 y=0.789551 
#ATTRIBUTE: x=1 y=1 z=1 w=1 
#ATTRIBUTE: x=0 y=1 z=0 w=0 
#ATTRIBUTE: x=0 y=0 z=0 w=0 
#ATTRIBUTE: x=0.941176 y=0.0588235 z=0 w=0 
#ATTRIBUTE: x=0 y=0 z=0 w=0 


def isUnrealEngineVertexLayout(vatrs):
    for idx in range(0, vatrs.getAttribsCount()):
        attr = vatrs.getAttr(idx)
        if attr.semantic.lower() != 'attribute':
            return False
    return True


# AUTO Geometry Detection
# Return [ [xatrIdx, xcompIdx], [yatrIdx, ycompIdx], [zatrIdx, zcompIdx] ]
def createPreVsAuto(vatrs):
    # Try 'POSITION' semantic
    for idx in range(0, vatrs.getAttribsCount()):
        attr = vatrs.getAttr(idx)
        if attr.semantic.lower() == 'position':
            return [[idx, 0], [idx, 1], [idx, 2]]

    # Try 'ATTRIBUTE' semantic (Unreal Engine)
    for idx in range(0, vatrs.getAttribsCount()):
        attr = vatrs.getAttr(idx)
        if attr.semantic.lower() == 'attribute' and (3 == attr.compCount):
            return [[idx, 0], [idx, 1], [idx, 2]]

    return [[0,0], [0,1], [0,2]]




# AUTO Texcoord Detection
class TexCoordAttrComp(object):
    def __init__(self):
        self.uAttrIdx = 0
        self.uCompIdx = 0

        self.vAttrIdx = 0
        self.vCompIdx = 1


def createTexCoordAuto(vatrs):
    res = []
    for idx in range(0, vatrs.getAttribsCount()):
        attr = vatrs.getAttr(idx)
        if attr.semantic.lower() == 'texcoord':
            tc = TexCoordAttrComp()
            tc.uAttrIdx = idx
            tc.vAttrIdx = idx
            res.append(tc)
    if 0 == len(res):
        if isUnrealEngineVertexLayout(vatrs):
            # UnrealEngine
            for idx in range(0, vatrs.getAttribsCount()):
                attr = vatrs.getAttr(idx)
                if (attr.semantic.lower() == 'attribute') and (2 == attr.compCount):
                    tc = TexCoordAttrComp()
                    tc.uAttrIdx = idx
                    tc.vAttrIdx = idx
                    res.append(tc)
        else:
            # TEXCOORD/ATTRIBUTE semantic not found. Using all attributes
            for idx in range(0, vatrs.getAttribsCount()):
                attr = vatrs.getAttr(idx)
                if attr.compCount > 1:
                    tc = TexCoordAttrComp()
                    tc.uAttrIdx = idx
                    tc.vAttrIdx = idx
                    res.append(tc)
    return res


def createTexCoordAttributeIndex(vatrs, options):
    res = []
    tc = TexCoordAttrComp()

    tc.uAttrIdx = options.texAttrCompIdx_uAttrIdx
    tc.uCompIdx = options.texAttrCompIdx_uCompIdx

    tc.vAttrIdx = options.texAttrCompIdx_vAttrIdx
    tc.vCompIdx = options.texAttrCompIdx_vCompIdx

    res.append(tc)
    return res


def createTexCoordAttributeName(vatrs, options):
    res = []
    tc = TexCoordAttrComp()

    for idx in range(0, vatrs.getAttribsCount()):
        attr = vatrs.getAttr(idx)
        if attr.semantic.lower() == options.texAttrName_attrName.lower():
            tc = TexCoordAttrComp()
            tc.uAttrIdx = idx
            tc.vAttrIdx = idx
            tc.uCompIdx = options.texAttrName_uCompIdx
            tc.vCompIdx = options.texAttrName_vCompIdx
            res.append(tc)
    return res


def getWidthHeightProp(rsttProps):
    defWidth = 1920
    defHeight = 1080
    if not rsttProps:
        return defWidth, defHeight
    width  = rsttProps.getVal('RT_WIDTH')
    height = rsttProps.getVal('RT_HEIGH')
    if (not width) or (not height):
        return defWidth, defHeight
    return width, height


def createNormalVectorsAuto(vatrs):
    for idx in range(0, vatrs.getAttribsCount()):
        attr = vatrs.getAttr(idx)
        if (attr.semantic.lower() == 'normal') and (attr.compCount >= 3):
            return [[idx, 0],[idx, 1],[idx, 2]]
    return None



def createTexturesList(textures, fileDirectory, options):
    if not textures:
        return []

    texList = []
    for i in range(0, textures.getTexturesCount()):
        texName = fileDirectory + "\\" + textures.getTexture(i).fileName
        texList.append(texName)

    if 0 == len(texList):
        return []


    if options.textureSlotIdx < len(texList):
        # Set first element in list as options.textureSlotIdx
        g_val = texList[0], texList[options.textureSlotIdx]
        texList[options.textureSlotIdx], texList[0] = g_val


    # Limit textures count
    maxTexFilesCount = 12
    copyCnt = len(texList)
    if copyCnt > maxTexFilesCount:
        copyCnt = maxTexFilesCount

    matTexList = []
    for idx in range(0, copyCnt):
        matTexList.append(texList[idx])
    return matTexList
