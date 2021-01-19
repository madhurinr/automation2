tuple1=('rain',)
print(type(tuple1))
tuple2=tuple(("f","g",'u','0'))
print(tuple2)
print(tuple2[1])
print(tuple2[:4])
print(tuple2[-3:-1])
if "g" not in tuple2:
    print("yes g present")
else:
    print("g not in list")

#unpacking the tuple
#extracting the values from tuple into valible is called unpacking tuple
#use * astic if u have more then value ten value in tuples
x=("aa","bb","cc")
(x,y,z)=x
print(x,y,z)
h=('r','g','h')
(o,*m)=h
print(o,m)