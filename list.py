#emoty list
list1=list()
print(list1)
#list with value
list2=list([1,2,3,4])
print(list2)
#mixed variable
list3=list(["e",4,5,"t"])
print(list3)
list4=list("python")
print(list4)

list5=[2,4,5,6]
list6=[1,2,2]
print(len(list5))
print(2 in list5)
print(5 not in list5)
print(max(list5))
print(min(list5))
print(sum(list5))
print(list5[2:5])
print(list5+list6)
print(list6*2)
for x in list5:
    print(x)


#access item from list
list7=['f',4,6,7]
print(list7[2:4])
print(list7[-4:-1])

#change items
#1 add one item
list8=[1,2,3,4,5]
list8[2]=9
print(list8)

#2 replace multiple value at index
list9=[8,9,4,2]
list9[2]=[0,1]
print(list9)
#3 replace range of values
list9[1:2]=[9,8]
print(list9)
#4 insert value at specific index
list9.insert(5,90)
print(list9)

#add list
addlist=list9+list2
print(addlist)
d="hello"
sortlist=list(list2.sort())
print(sortlist)