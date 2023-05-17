from glob import glob
import os
import sys

from pymxs import runtime as rt

root_path = "C:\\Users\\thoma\\OneDrive\\Documents\\GitHub\\UnrealSouls\\Assets\\FirelinkShrine\\Firelink Shrine\\"

for file in glob(root_path + "*.obj"):
	rt.ImportFile(file, rt.Name("NoPrompt"), using=rt.ObjImp)