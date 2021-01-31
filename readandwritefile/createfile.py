file=open("D:\\new3.txt","r")
valu=file.readlines()
print(valu)
name=valu[0][12:19]
print(name)
file.close()