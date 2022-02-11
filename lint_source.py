import os
import glob

path="src/"

arr = os.listdir(path)

vhd_files = []
for file in glob.glob("*.vhd"):
    vhd_files.append(file)
    
for file in vhd_files:
    os.system("vcom $GITHUB_WORKSPACE/src/" + file + " -lint")
    