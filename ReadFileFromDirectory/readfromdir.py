import os
path=r"D:\Madhuri\java docs"
x=os.listdir(path)
print(x)
pathlist=[]
for root,dir,file in os.walk(path):
    for f in file:
        y=os.path.join(root,f)
        pathlist.append(y)
print(pathlist[1])

