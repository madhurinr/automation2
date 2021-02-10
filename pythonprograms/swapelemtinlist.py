list=[2,3,5,6]
len=len(list)
print(len)
list[0],list[len-1]=list[len-1],list[0]
print(list)

temp=list[0]
list[0]=list[len-1]
list[len-1]=list[0]
print(list)