import os
import glob
path=r"D:\Madhuri\java docs"
file=os.listdir(path)
#print(file)
for root,dir,file in os.walk(path):
    for f in file:
        if f.startswith('text'):
            print(os.path.join(root,f))

for root1,dir1,file1 in os.walk(path):
    for file in file1:
        if file.endswith('.txt'):
            print(os.path.join(root,file))
g=glob.glob("D:\Madhuri\java docs\*")
print(g)
if g[1]=='D:\\Madhuri\\java docs\\Java_Keshav_Notes':
    print('file found')
else:
    print('file not found')