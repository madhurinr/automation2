import glob
import os
path=r"D:\Madhuri\java docs"
g=glob.glob('D:\Madhuri\java docs\*')
for i in g:
    print(i)
# for root,dir,file in os.walk(path):
#     for f in file:
#         print(os.path.join(root,f))
#
# print(os.listdir(path))