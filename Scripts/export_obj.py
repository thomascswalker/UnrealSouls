from glob import glob
import os
import sys

from pymxs import runtime as rt

root_path = "C:\\Users\\thoma\\OneDrive\\Documents\\GitHub\\UnrealSouls\\Assets\\FirelinkShrine\\"

for node in rt.GetCurrentSelection():
    rt.Select(node)
    file_base_name = node.name
    file_full_name = os.path.join(root_path, f"{file_base_name}.fbx")
    print(f"Exporting {file_full_name}")
    rt.FBXExporterSetParam("ScaleFactor", 100.0)
    rt.ExportFile(file_full_name, rt.Name("NoPrompt"), selectedOnly=True, using=rt.FBXEXP)
    print(f"Export complete.")