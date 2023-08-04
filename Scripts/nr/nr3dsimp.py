import os
import sys
import struct

import nrfile
import nrtools
import nrdump
import nrimp


g_pymxsFound   = False
g_MaxPlusFound = False


# pymxs
try:
    from pymxs import runtime as rt
    g_pymxsFound = True
except Exception as e:
    print("pymxs not found")

# MaxPlus
try:
    import MaxPlus
    g_MaxPlusFound = True
except Exception as e:
    print("MaxPlus not found")


def isMaxPlusAvailable():
    return g_MaxPlusFound

def isPymxsAvailable():
    return g_pymxsFound


class kMaterialCreateType:
    Single      = 0
    MultiSubObj = 1


class kConvertMeshTo:
    NoConvert    = 0
    EditablePoly = 1


def matHash(texList):
    res = ""
    for texFile in texList:
        res = res + '__' + os.path.basename(texFile)
    #return hashlib.md5(res).hexdigest()
    return res


class MaterialManager_MaxPlus(object):
    def __init__(self):
        self.loadedImgs = []
        self.failedImgs = []


    def __getMaterialFromLibrary(self, srcMatName):
        matlib = MaxPlus.MaterialLibrary.GetSceneMaterialLibrary()
        index = matlib.FindMaterialByName(str(srcMatName))
        if (index is None) or (index == -1):
            return None

        mat = matlib.GetMaterial(index)
        if mat is None :
            return None
        return MaxPlus.Mtl._CastFrom(mat) 


    def createMaterial(self, texList, options):
        if 0 == len(texList):
            return None

        matName = matHash(texList)

        material = self.__getMaterialFromLibrary(matName)
        if material:
            #nrtools.logInfo("Using existing material")
            return material
        
        #writeLog("Create new material {:s}".format(matName))

        if options.materialCreateType == kMaterialCreateType.Single:
            # Single
            material = self.__createSingleMaterial(matName, texList)
        elif options.materialCreateType == kMaterialCreateType.MultiSubObj:
            # MultiSub
            material = self.__createMultiSubMaterial(matName, texList)

        if material:
            material.SetName(MaxPlus.WStr(matName))
            #mat_lib = MaxPlus.MaterialLibrary.GetSceneMaterialLibrary()
            #mat_lib.Add(material)

        return material


    def __createSingleMaterial(self, matName, texList):
        material = MaxPlus.Factory.CreateDefaultStdMat()
        #material.SetName(MaxPlus.WStr(matName))
        ########material.ShowTextureMap = True  ##########???????
        ########material.showInViewport = True
        idx = 0
        for texFile in texList:
            bitmapTex = self.__createBitmapTex(texFile)
            #########bitmapTex.ShowTextureMap = True   ##############????????
            #########bitmapTex.showInViewport = True
            if bitmapTex:
                materialSubMaps = MaxPlus.ISubMap._CastFrom(material)
                #############materialSubMaps.ShowTextureMap = True   ###################?????????
                #############materialSubMaps.showInViewport = True
                materialSubMaps.SetSubTexmap(1 + idx, bitmapTex)
                material.SetEnableMap(1 + idx, True)
                idx = idx + 1
        return material


    def __createMultiSubMaterial(self, matName, texList):
        material = MaxPlus.Factory.CreateDefaultMultiMtl()
        #material.SetName(MaxPlus.WStr(matName))
        material.SetNumSubMtls(len(texList))

        idx = 0
        for texFile in texList:
            subMat = material.GetSubMtl(idx)

            if not subMat:
                #writeLog("subMat==None")
                continue

            subMat.SetName(MaxPlus.WStr(matName + "_" + str(idx)))

            bitmapTex = self.__createBitmapTex(texFile)
            if not bitmapTex:
                #writeLog("bitmapTex==None")
                continue

            materialSubMaps = MaxPlus.ISubMap._CastFrom(subMat)
            if not materialSubMaps:
                #writeLog("materialSubMaps==None")
                continue

            materialSubMaps.SetSubTexmap(1, bitmapTex)
            #stdmaterial.SetEnableMap(1, True)

            idx = idx + 1
        return material


    def __createBitmapTex(self, fullpath):
        bitmapTex = None
        try:
            bitmapTex = MaxPlus.Factory.CreateDefaultBitmapTex()
            if bitmapTex:
                bitmapTex.SetMapName(fullpath)
                bitmapTex.ReloadBitmapAndUpdate()
                nrtools.logInfo(u"--> SUCCESSFULL load: {}".format(fullpath))
                self.loadedImgs.append(fullpath)
            else:
                nrtools.logError(u"--> FAILED to load: {}".format(fullpath))
                bitmapTex = None
                self.failedImgs.append(fullpath)
        except Exception as e:
            nrtools.logError(u"--> FAILED to load: {} Error: {}".format(fullpath, str(e)))
            bitmapTex = None
            self.failedImgs.append(fullpath)
        return bitmapTex


class Importer_MaxPlus(object):
    def __init__(self):
        self.matMgr = MaterialManager_MaxPlus()
        return


    def createTexCoords(self, mesh, vert, vertexData, vatrs, faces1, texCoordAttrCompIdxList, options):
        uvCnt = len(texCoordAttrCompIdxList)
        if 0 == uvCnt:
            #writeLog("Texture coords list is empty")
            return

        tex_uvIdx = options.texAttrName_uvIdx
        for uvIdx in range(0, uvCnt):
            tcAttrComp = texCoordAttrCompIdxList[uvIdx]

            texScatterU = [tcAttrComp.uAttrIdx, tcAttrComp.uCompIdx]  # [attrIdx, compIdx]
            texScatterV = [tcAttrComp.vAttrIdx, tcAttrComp.vCompIdx]  # [attrIdx, compIdx]

            layerTextureCoordinates = nrtools.unpackVertexComponentVaAsList(vert, vertexData, vatrs, [texScatterU, texScatterV])
            if None == layerTextureCoordinates:
                #writeLog("UV coordinates not found for U:{:s}-V:{:s}".format(str(texScatterU), str(texScatterV)))
                continue
            
            if 0 == len(layerTextureCoordinates):
                #writeLog("No texture coordinates")
                continue
            if len(layerTextureCoordinates[0]) < 2:
                #writeLog("UV components < 2")
                continue

            uvwList = []
            for tctc in layerTextureCoordinates:
                uvw = MaxPlus.Point3(float(tctc[0]), 1.0 - float(tctc[1]), 0.0)
                uvwList.append(uvw)

            # Set additional UV in custom map
            customMap = mesh.GetCustomMap(1 + uvIdx)
            if customMap:
                customMap.SetNumTextureVertices(len(uvwList))
                for idx in range(0, len(uvwList)):
                    customMap.SetTextureVertex(idx, uvwList[idx])
                for idx in range(0, len(faces1)):
                    customMap.SetTextureFace(idx, faces1[idx][0], faces1[idx][1], faces1[idx][2])

            if tex_uvIdx == uvIdx:
                mesh.DefaultMap.SetNumTextureVertices(len(uvwList))
                for idx in range(0, len(uvwList)):
                    mesh.DefaultMap.SetTextureVertex(idx, uvwList[idx])   # 1+idx -> ERRROR   VALID: 0-N
                for idx in range(0, len(faces1)):
                    mesh.DefaultMap.SetTextureFace(idx, faces1[idx][0], faces1[idx][1], faces1[idx][2])


    def createMesh(self, vert, vertexData, vatrs,  vert1, vertexData1, vatrs1, meshName, fileDirectory, loadExtraUvData, positions3, indx, textures, options):
        geom = MaxPlus.Factory.CreateGeomObject(MaxPlus.ClassIds.TriMeshGeometry)
        tri = MaxPlus.TriObject._CastFrom(geom)

        node = MaxPlus.Factory.CreateNode(tri)
        node.SetName(meshName)

        mesh = tri.GetMesh()

        mesh.SetNumVerts(len(positions3))
        #pointList = []
        for idx in range(0, len(positions3)):
            pnt = MaxPlus.Point3(float(positions3[idx][0]), float(positions3[idx][1]), float(positions3[idx][2]))
            #pointList.append(pnt)
            mesh.SetVert(idx, pnt)


        triangles = indx.read()
        faces1 = []
        mesh.SetNumFaces(int(indx.getIndexCount()/3))
        for idx in range(0, int(indx.getIndexCount()/3) ):
            p = struct.unpack_from("iii", triangles, 12*idx)
            #f = MaxPlus.Point3(1 + p[0], 1 + p[1], 1 + p[2])
            faces1.append(p)
            mesh.GetFace(idx).SetVerts(p[0], p[1], p[2])

        mesh.AutoSmooth(30, False)

        # Assign normal vectors  FAILED!!!!!!!!!!!!!1111111111111
        #self.assignNormals(mesh, vatrs, vert, vertexData, None, options)


        # Texcoords
        texCoordAttrList = []

        if not loadExtraUvData:
            if nrimp.TexcoordLoadMode.Auto == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAuto(vatrs)
            elif nrimp.TexcoordLoadMode.AttrName == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAttributeName(vatrs, options)
            elif nrimp.TexcoordLoadMode.AttrCompIdx == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAttributeIndex(vatrs, options)
            self.createTexCoords(mesh, vert, vertexData, vatrs, faces1, texCoordAttrList, options)
        else:
            if nrimp.TexcoordLoadMode.Auto == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAuto(vatrs1)
            elif nrimp.TexcoordLoadMode.AttrName == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAttributeName(vatrs1, options)
            elif nrimp.TexcoordLoadMode.AttrCompIdx == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAttributeIndex(vatrs1, options)
            self.createTexCoords(mesh, vert1, vertexData1, vatrs1, faces1, texCoordAttrList, options)


        # Create material if textures presented
        texList = nrimp.createTexturesList(textures, fileDirectory, options)
        material = self.matMgr.createMaterial(texList, options)
        if material:
            node.Material = material
            # Show Shaded Material in Viewport
            MaxPlus.Core.EvalMAXScript('showTextureMap $' + node.Name + '.material  true') 


        #mod = MaxPlus.Factory.CreateObjectModifier(MaxPlus.ClassIds.Edit_Mesh)
        ##mod = MaxPlus.Factory.CreateObjectModifier(MaxPlus.ClassIds.Edit_Patch)  
        #node.AddModifier(mod)
        #node.Collapse(True)
        #node.Convert(MaxPlus.ClassIds.PolyMeshObject)

        if options.convertMeshTo == kConvertMeshTo.EditablePoly:
            mod = MaxPlus.Factory.CreateObjectModifier(MaxPlus.ClassIds.Edit_Patch)  
            node.AddModifier(mod)
            node.Collapse(True)
            node.Convert(MaxPlus.ClassIds.PolyMeshObject)


        mesh.InvalidateGeomCache()
        mesh.InvalidateTopologyCache()

        return True


#########################################################################


class MaterialManager_pymxs(object):    
    def __init__(self):
        self.loadedImgs = []
        self.failedImgs = []


    def __isMaterialExist(self, matName):
        for mat in rt.sceneMaterials:
            if mat.name == matName:
                return mat
        return None


    def createMaterial(self, texList, options):
        if 0 == len(texList):
            return None

        matName = matHash(texList)

        material = self.__isMaterialExist(matName)
        if material:
            #writeLog("Mat exist {:s}".format(matName))
            return material

        #writeLog(u"Creating new material {}".format(matName))

        if options.materialCreateType == kMaterialCreateType.Single:
            # Single
            material = self.__createSingleMaterial(matName, texList)
        elif options.materialCreateType == kMaterialCreateType.MultiSubObj:
            # MultiSub
            material = self.__createMultiSubMaterial(matName, texList)
        return material


    def __createBitmap(self, fullpath):
        bitmap = None
        try:
            bitmap = rt.openBitMap(fullpath)
            if bitmap:
                nrtools.logInfo(u"--> SUCCESSFULL load: {}".format(fullpath))
                self.loadedImgs.append(fullpath)
            else:
                nrtools.logError(u"--> FAILED to load: {}".format(fullpath))
                self.failedImgs.append(fullpath)
        except Exception as e:
            nrtools.logError(u"--> FAILED to load: {} Error: {}".format(fullpath, str(e)))
            bitmap = None
            self.failedImgs.append(fullpath)
        return bitmap


    def __createSingleMaterial(self, matName, texList):
        idx = 0
        #material = rt.StandardMaterial(name=matName)
        material = rt.PhysicalMaterial(name=matName)
        rt.showTextureMap(material, True)
        for texFile in texList:
            bitmap = self.__createBitmap(texFile)
            if bitmap:
                bmt = rt.bitmapTex()
                bmt.bitmap = bitmap
                rt.SetSubTexmap(material, 2 + idx, bmt)  # Set BASE COLOR MAP
            idx = idx + 1
        return material


    def __createMultiSubMaterial(self, matName, texList):
        idx = 0
        material = rt.Multimaterial(name=matName, numsubs=len(texList))
        for texFile in texList:
            subMat = rt.getSubMtl(material, 1 + idx)
            bitmap = self.__createBitmap(texFile)
            if bitmap:
                bmt = rt.bitmapTex()
                bmt.bitmap = bitmap
                rt.SetSubTexmap(subMat, 2, bmt)  # Set BASE COLOR MAP
            idx = idx + 1
        return material


class Importer_pymxs(object):
    def __init__(self):
        self.matMgr = MaterialManager_pymxs()
        return


    def createTexCoords(self, mesh, vert, vertexData, vatrs, faces1, texCoordAttrCompIdxList, options):
        uvCnt = len(texCoordAttrCompIdxList)
        if 0 == uvCnt:
            #writeLog("Texture coords list is empty")
            return

        tex_uvIdx = options.texAttrName_uvIdx
        rt.meshop.setNumMaps(mesh, 1 + uvCnt)
        for uvIdx in range(0, uvCnt):
            tcAttrComp = texCoordAttrCompIdxList[uvIdx]

            texScatterU = [tcAttrComp.uAttrIdx, tcAttrComp.uCompIdx]  # [attrIdx, compIdx]
            texScatterV = [tcAttrComp.vAttrIdx, tcAttrComp.vCompIdx]  # [attrIdx, compIdx]

            layerTextureCoordinates = nrtools.unpackVertexComponentVaAsList(vert, vertexData, vatrs, [texScatterU, texScatterV])
            if None == layerTextureCoordinates:
                #writeLog("UV coordinates not found for U:{:s}-V:{:s}".format(str(texScatterU), str(texScatterV)))
                continue
            
            if 0 == len(layerTextureCoordinates):
                #writeLog("No texture coordinates")
                continue
            if len(layerTextureCoordinates[0]) < 2:
                #writeLog("UV components < 2")
                continue

            uvwList = []

            for tctc in layerTextureCoordinates:
                uvw = rt.Point3(float(tctc[0]), 1.0 - float(tctc[1]), 0.0)
                uvwList.append(uvw)

            rt.meshop.setMapSupport(mesh, 1 + uvIdx, True);

            # Assign Default Texture mapping
            if uvIdx == tex_uvIdx:
                rt.buildTVFaces(mesh, False)
                for idx in range(0, len(faces1)):
                    rt.setTVFace(mesh, 1 + idx, faces1[idx])

                rt.meshop.setNumTVerts(mesh, len(uvwList))
                for idx in range(0, len(uvwList)):
                    rt.setTVert(mesh, 1 + idx, uvwList[idx])   # 3ds Max 2018 bug

            # Set UV-channel data
            for idx in range(0, len(uvwList)):
                rt.meshop.setMapVert(mesh, 1 + uvIdx, 1 + idx,  uvwList[idx])


    def createMesh(self, vert, vertexData, vatrs,  vert1, vertexData1, vatrs1, meshName, fileDirectory, loadExtraUvData, positions3, indx, textures, options):
        pointList = []
        for idx in range(0, len(positions3)):
            pnt = rt.Point3(float(positions3[idx][0]), float(positions3[idx][1]), float(positions3[idx][2]))
            pointList.append(pnt)

        # Indexes started from 1 ?!
        triangles = indx.read()
        faces1 = []
        for idx in range(0, int(indx.getIndexCount()/3) ):
            p = struct.unpack_from("iii", triangles, 12*idx)
            f = rt.Point3(1 + p[0], 1 + p[1], 1 + p[2])
            faces1.append(f)

        mesh = None

        # Create material from textures
        texList = nrimp.createTexturesList(textures, fileDirectory, options)

        material1 = self.matMgr.createMaterial(texList, options)
        if material1:
            mesh = rt.mesh(name=meshName, vertices=pointList, faces=faces1, material=material1)
        else:
            mesh = rt.mesh(name=meshName, vertices=pointList, faces=faces1)

        # Texcoords
        texCoordAttrList = []
        if not loadExtraUvData:
            if nrimp.TexcoordLoadMode.Auto == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAuto(vatrs)
            elif nrimp.TexcoordLoadMode.AttrName == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAttributeName(vatrs, options)
            elif nrimp.TexcoordLoadMode.AttrCompIdx == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAttributeIndex(vatrs, options)
            self.createTexCoords(mesh, vert, vertexData, vatrs, faces1, texCoordAttrList, options)
        else:
            if nrimp.TexcoordLoadMode.Auto == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAuto(vatrs1)
            elif nrimp.TexcoordLoadMode.AttrName == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAttributeName(vatrs1, options)
            elif nrimp.TexcoordLoadMode.AttrCompIdx == options.texcoordLoadMode:
                texCoordAttrList = nrimp.createTexCoordAttributeIndex(vatrs1, options)
            self.createTexCoords(mesh, vert1, vertexData1, vatrs1, faces1, texCoordAttrList, options)

        rt.update(mesh)
        return True


#########################################################################


class MaxImporter(object):
    def __init__(self):
        self.totalFilesCount = 0
        self.totalCreated = 0

        self.imp_MaxPlus = Importer_MaxPlus()
        self.imp_pymxs   = Importer_pymxs()

        self._maxNrSize = 0
        self._maxMeshName = ''


    def printInfo(self):
        nrtools.logInfo("Parsed files count={:d}".format(self.totalFilesCount))
        nrtools.logInfo("Created meshes count={:d}".format(self.totalCreated))
        nrtools.logInfo("Largest NR-file: {:s}. FileSize={:d}".format(self._maxMeshName, self._maxNrSize))


    def importTriangleMesh(self, nrmesh, indx, vert, vertexData, vatrs, positions3, meshName, fileDirectory, options):
        # Extra vatrs/vertexes
        loadExtraUvData = False
        vert1  = None
        vatrs1 = None
        vertexData1 = None
        if options.loadExtraUvData:
            while (True):
                vert1  = nrmesh.getVertexes(1)
                vatrs1 = nrmesh.getVertexAttributes(1)
                if (not vert1) or (not vatrs1):
                    break

                vertexData1 = vert1.read()
                if not vertexData1:
                    break

                if vert.getVertexCount() != vert1.getVertexCount():
                    nrtools.logError("Vertex count != Extra vertex count {:d} != {:d}".format(vert.getVertexCount(), vert1.getVertexCount()))
                    break

                loadExtraUvData = True
                break

        # Get Textures object (TXTR tag in rip file)
        #  textures = texture files list
        textures = nrmesh.getTextures()

        # Create mesh pymxs/MaxPlus
        meshCreated = False
        if isMaxPlusAvailable():
            meshCreated = self.imp_MaxPlus.createMesh(vert, vertexData, vatrs,  vert1, vertexData1, vatrs1, meshName, fileDirectory, loadExtraUvData, positions3, indx, textures, options)
        elif isPymxsAvailable():
            meshCreated = self.imp_pymxs.createMesh(vert, vertexData, vatrs,  vert1, vertexData1, vatrs1, meshName, fileDirectory, loadExtraUvData, positions3, indx, textures, options)
        else:
            nrtools.logError("Import API Not Found pymxs/MaxPlus")

        return meshCreated


    def importMeshImpl(self, loadPostVs, fileName, options):
        nrtools.logInfo(u"Loading: {}".format(fileName))

        nr = nrfile.NRFile()
        if not nr.parse(fileName):
            nrtools.logError("Ninja Ripper file parsing failed: {}".format(nr.getErrorString()))
            return False

        fileDirectory = os.path.dirname(os.path.abspath(fileName))

        for meshIdx in range(0, nr.getMeshCount()):
            nrmesh = nr.getMesh(meshIdx)

            if options.ignoreMeshesWithoutTextures and nrtools.isMeshWithoutTextures(nrmesh):
                #nrtools.logInfo("No textures in mesh")
                continue

            # ---Fast checks for mesh stage---
            if loadPostVs:
                # PostVS processing
                if nrfile.ShaderStage.PreVs == nrmesh.getShaderStage():
                    #writeLog("Skipping PreVs")
                    continue
            else:
                # PreVS processing
                if nrfile.ShaderStage.PreVs != nrmesh.getShaderStage():
                    #writeLog("Skipping PostVs")
                    continue

            vatrs = nrmesh.getVertexAttributes(0)
            if None == vatrs:
                #writeLog("vertexAttribs == Null")
                continue

            if loadPostVs:
                # PostVS attribute with idx==0 is always POSITION with four components (homogeneous coordinates xyzw)
                if vatrs.getAttr(0).compCount != 4:
                    #writeLog("Post vs position not 4 component")
                    continue

            vert = nrmesh.getVertexes(0)
            if None == vert:
                #writeLog("vertexes == Null")
                continue

            vertexData = vert.read()
            if None == vertexData:
                #writeLog("vertexData == Null")
                continue

            positions3 = None
            if loadPostVs:
                # PostVS
                if nrimp.GeometryLoadMode.PostVs_Matrix == options.geometryLoadMode:
                    positions3 = nrtools.restorePositionAsList(vert, vertexData, vatrs.getAttr(0), options.projMat)
                    if None == positions3:
                        #writeLog("positions3 == Null")
                        continue
                elif nrimp.GeometryLoadMode.PostVs_Fov == options.geometryLoadMode:
                    ##????????????????????
                    rsttProps = nrmesh.getProperties(nrfile.createTag('R', 'S', 'T', 'T'))
                    fov = float(options.fovY)
                    width, height = nrimp.getWidthHeightProp(rsttProps)

                    nearDist = 0.01
                    farDist  = 1000.0
                    projMat    = nrtools.perspMatFovLH(fov, width, height, nearDist, farDist)
                    positions3 = nrtools.restorePositionAsList(vert, vertexData, vatrs.getAttr(0), projMat)
                    if None == positions3:
                        #writeLog("positions3 == Null")
                        continue
                else:
                    nrtools.logError("Unknown Geometry Mode")
                    continue
            else:
                # PreVS
                if nrimp.GeometryLoadMode.PreVs_Auto == options.geometryLoadMode:
                    posAttr = nrimp.createPreVsAuto(vatrs)
                    positions3 = nrtools.unpackVertexComponentVaAsList(vert, vertexData, vatrs, [posAttr[0], posAttr[1], posAttr[2]])
                elif nrimp.GeometryLoadMode.PreVs_AttrCompIdx == options.geometryLoadMode:
                    positions3 = nrtools.unpackVertexComponentVaAsList(vert, vertexData, vatrs, [[options.prevs_xAttrIdx, options.prevs_xCompIdx], [options.prevs_yAttrIdx, options.prevs_yCompIdx], [options.prevs_zAttrIdx, options.prevs_zCompIdx]] )
                if None == positions3:
                    nrtools.logError("positions3 == Null")
                    continue

            meshName = os.path.basename(fileName)
            meshName = os.path.splitext(meshName)[0]
            meshCreated = False
            if nrfile.PrimitiveTopology.TriangleList == nrmesh.getPrimitiveTopology():
                indx = nrmesh.getIndexes(0)
                if None == indx:
                    nrtools.logError("indexes == Null")
                    continue

                # Create triangle mesh
                meshCreated = self.importTriangleMesh(nrmesh, indx, vert, vertexData, vatrs, positions3, meshName, fileDirectory, options)
            else:
                # Create line/point mesh
                nrtools.logError("Import not realized for primitive topology={}".format(nrdump.topologyToStr(indx.getPrimitiveTopology())))
            

            if meshCreated:
                if nr.getFileSize() > self._maxNrSize:
                    self._maxNrSize = nr.getFileSize()
                    self._maxMeshName = meshName
                self.totalCreated = self.totalCreated + 1

        self.totalFilesCount = self.totalFilesCount + 1
        return True


    def importMesh(self, loadPostVs, fileName, options):
        res = False
        try:
            res = self.importMeshImpl(loadPostVs, fileName, options)
        except Exception as e:
            nrtools.logError("Import exception: {}".format(str(e)))
        return res
