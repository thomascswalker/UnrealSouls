from glob import glob
import os
import sys

from pymxs import runtime as rt

undead_asylum = "C:\\Users\\thoma\\OneDrive\\Documents\\GitHub\\UnrealSouls\\Assets\\NorthernUndeadAsylum\\Northern Undead Asylum\\"
root_path = "C:\\Users\\thoma\\OneDrive\\Documents\\GitHub\\UnrealSouls\\Assets\\FirelinkShrine\\Firelink Shrine\\"

for file in glob(undead_asylum + "*.obj"):
	rt.ImportFile(file, rt.Name("NoPrompt"), using=rt.ObjImp)