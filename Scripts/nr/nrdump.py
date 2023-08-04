
import sys
import os
import re
import struct


# For meshinfo.py
import nrfile


def ShaderStageToString(x):
    if nrfile.ShaderStage.Unknown == x:
        return "Unknown"
    if nrfile.ShaderStage.PreVs == x:
        return "PreVs"
    if nrfile.ShaderStage.Vs == x:
        return "Vs"
    if nrfile.ShaderStage.DsGs == x:
        return "DsGs"
    return "Unknown"

def shaderTypeToStr(shaderType):
    if nrfile.ShaderType.Vertex == shaderType:
        return "Vertex"
    elif nrfile.ShaderType.Pixel == shaderType:
        return "Pixel"
    elif nrfile.ShaderType.Geometry == shaderType:
        return "Geometry"
    elif nrfile.ShaderType.Domain == shaderType:
        return "Domain"
    elif nrfile.ShaderType.Hull == shaderType:
        return "Hull"
    return "Unknown=" + str(shaderType)


def topologyToStr(topo):
    if nrfile.PrimitiveTopology.TriangleList == topo:
        return "TriangleList"
    elif nrfile.PrimitiveTopology.LineList == topo:
        return "LineList"
    elif nrfile.PrimitiveTopology.PointList == topo:
        return "PointList"
    elif nrfile.PrimitiveTopology.Unknown == topo:
        return "Unknown"
    return "Unknown=" + str(topo)


# TODO: Rename
def attrCompTypeToStr(t):
    if nrfile.VaType.Float == t:
        return "Float"
    if nrfile.VaType.Uint32 == t:
        return "Uint32"
    if nrfile.VaType.Uint16 == t:
        return "Uint16"
    if nrfile.VaType.Uint8 == t:
        return "Uint8"
    if nrfile.VaType.Sint32 == t:
        return "Sint32"
    if nrfile.VaType.Sint16 == t:
        return "Sint16"
    if nrfile.VaType.Sint8 == t:
        return "Sint8"
    return "Unknown"


def printShaders(mesh):
    print("----Shaders info----")
    shaders = mesh.getShaders()
    if not shaders:
        print("Shaders not found\n")
        return
        
    print("Shaders count={:d}".format(shaders.getShadersCount()))
    for idx in range(0, shaders.getShadersCount()):
        shader = shaders.getShader(idx)
        #print("---Idx: {:d}---".format(idx))
        print("Type: {:s}. File: {:s}".format(shaderTypeToStr(shader.shaderType), shader.fileName))
    print("----Shaders info end----")
    print("\n")



def printTextures(mesh):
    # Textures info
    print("----Texture info----")
    textures = mesh.getTextures()
    if not textures:
        print("Textures not found\n")
        return
        
    print("Textures count={:d}".format(textures.getTexturesCount()))
    for idx in range(0, textures.getTexturesCount()):
        tex = textures.getTexture(idx)
        print("---Idx: {:d}---".format(idx))
        print("BindSlot: {:d}".format(tex.bindSlot))
        print("File    : {:s}".format(tex.fileName))
    print("----Texture info end----")
    print("\n")


def printIndexes1(mesh, maxIndexDumpCount, indx):
    # Index info dump
    print("----Index info----")    
    indxCnt = indx.getIndexCount()

    print("Index count={:d} PrimitiveTopology={:s}".format(indxCnt, topologyToStr(indx.getPrimitiveTopology())))

    indxData = indx.read()
    print("Index raw data size: {:d}".format(len(indxData)))


    dumpIndexCount = indxCnt
    if -1 != maxIndexDumpCount:
        dumpIndexCount = maxIndexDumpCount
    if dumpIndexCount > indxCnt:
        dumpIndexCount = indxCnt
    print("dumpIndexCount={:d}".format(dumpIndexCount))


    print("Indexes:")
    for idx in range(0, dumpIndexCount):
        i = struct.unpack_from('i', indxData, 4 * idx)
        print("{:d} -> {:d}".format(idx, i[0]))
        
    if dumpIndexCount < indxCnt:
        print("...") # Mark as not full dump       


    # Get max index (for validation)
    maxIndex = 0
    for idx in range(0, indxCnt):
        i = struct.unpack_from('i', indxData, 4 * idx)
        if i[0] > maxIndex:
            maxIndex = i[0]
    print("Max index value={:d}".format(maxIndex))
    
    print("\n")
    
    print("----Index info end----")
    print("\n")
    return maxIndex


def printIndexes(mesh, maxIndexDumpCount, idx):
    # Index info dump
    print("----Indexes dump {:d}----".format(idx))
    indx = mesh.getIndexes(idx)
    if not indx:
        return None
    return printIndexes1(mesh, maxIndexDumpCount, indx)


def printVertAttr1(mesh, vatrs):
    # Vertex attributes
    #print("----Vertex Attributes info----")
    
    print("Attr count={:d}".format(vatrs.getAttribsCount()))
    for idx in range(0, vatrs.getAttribsCount()):
        va = vatrs.getAttr(idx)
        #print("---Idx: {:d}---".format(idx))
        print("Semantic={:s}. SemIdx={:d}. VaType={:s}. Offset={:d}  CompCnt={:d}".format(va.semantic, va.semanticIdx, attrCompTypeToStr(va.vaType), va.offs, va.compCount))

    print("\n")
    return vatrs
    
def printVertAttribs(mesh, idx):
    # Vertex attributes
    print("----Vertex Attributes info {:d}----".format(idx))
    vatrs = mesh.getVertexAttributes(idx)
    if not vatrs:
        return None
    printVertAttr1(mesh, vatrs)
    return vatrs

def printVertexes1(vert, mesh, maxIndex, maxVertexDumpCount, vatrs):
    #print("----Vertex attributes info----")
    
    #vatrs = mesh.getVertexAttributes()
    #if not vatrs:
    #    print("Vertex attributes not found\n")
    #    return

    print("Vertex count: {:d}".format(vert.getVertexCount()))
    print("Vertex size : {:d}".format(vert.getVertexSize()))
    
    if maxIndex >= vert.getVertexCount():
        print("**********************ERROR: MAX_INDEX_COUNT >= VERTEX_COUNT")
        
    vertexData = vert.read()
    print("Vertex raw data size: {:d}".format(len(vertexData)))


    dumpVertCnt = vert.getVertexCount()
    if -1 != maxVertexDumpCount:
        dumpVertCnt = maxVertexDumpCount
    if dumpVertCnt > vert.getVertexCount():
        dumpVertCnt = vert.getVertexCount()

    print("dumpVertCnt={:d}".format(dumpVertCnt))

    print("Vertex data:")
    vertBaseOffs = 0
    for idx in range(0, dumpVertCnt):
        for attrIdx in range(0, vatrs.getAttribsCount()):
            va = vatrs.getAttr(attrIdx)
            fmt = va.getFormat()
            offs = va.offs
            vertDataOffs = vertBaseOffs + offs
            p = struct.unpack_from(fmt, vertexData, vertDataOffs)
            print("{:d} - {:s} {:s}".format(idx, va.semantic, str(p)))
        vertBaseOffs = vertBaseOffs + vert.getVertexSize()
        #print("\n")
    print("----Vertex info end----")


def printVertexes(mesh, maxIndex, maxVertexDumpCount, idx):
    print("----Vertexes info dump {:d}----".format(idx))
    vert = mesh.getVertexes(idx)
    if not vert:
        return None
    vatrs = mesh.getVertexAttributes(idx)
    if not vatrs:
        return None
    printVertexes1(vert, mesh, maxIndex, maxVertexDumpCount, vatrs)
    return vert


def printProperties(nr, mesh):
    # Vertex attributes
    print("----Properties info----")

    allProps = mesh.getAllProperties()

    print("Total PROP {:d}".format(len(allProps)))

    for props in allProps:
        print("Tag {:s} PropsCnt={:d}".format(nrfile.tagToString(props.tag), props.getPropsCount()))
        for idx in range(0, props.getPropsCount()):
            prop = props.getProp(idx)
            print("{:d}  {:s}={:s}".format(idx, prop.name, str(prop.getValue())))
        print("\n")


def printChunks(nr):
    chunkMap = nr.getChunkMap()
    keys = chunkMap.keys();
    for k in keys:
        arr = chunkMap.get(k)
        cnt = 0
        if arr:
            cnt = len(arr)
        print("Tag: {:s} Count={:d}".format(nrfile.tagToString(k), cnt))
