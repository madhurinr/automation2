i=2
while i<5:
    print(i)
    i=i+1
#break
j=1
while j<6:
    print(j)
    if j==4:
        break
    j=j+1
#continue and else --> else statement is used when while is sucessfull
h=0
while h<6:
    h=h+1
    if h==2:
        k=h
        print("this no will be skipped")
        continue
    print(h)

else:
    print("loop completed")


#pass
p=3
while p==1:
    pass
    

