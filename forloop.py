#for loop
print("0 to 10")
for i in range(0,10):
    print(i)
print("0 to 10 even num")
for j in range(0,10,2):
    print(j)
print("9 to 0 odd num")
for k in range(9,0,-2):
    print(k)
print("10 to 0 even num")
for l in range(10,0,-2):
    print(l)
#loop using List
list1=["roase","bananna","apple"]
for d in list1:
    print(d)
#loop through string
s=""
for k in "madhuri":
     s=s+k
print(s)
#break-->break stops the iteration and once condtion is met
for k in list1:
    print(k)
    if k=="bananna":
        print(k)
        break
#continue -->  when condtion is met it skip that iteration and continues with next iteration

new="hello","name","ur"
for h in new:
    if h=="name":
        continue
    print(h)
#for loop with else
print("nested loop")
for g in list1:
    print(g)
    for u in new:
        print(u)
else:
    print("loop completed")
#pass statement --.> is used when we want to declare for loop without any contion
for m in list1:
    print("test pass")
    pass

#loop through rever stringstring
name="madhuri"
size=len(name)

f=""
for k in range((size-1),-1,-1):
    f=f+name[k]
print(f)

