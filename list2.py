#add elemts to list -->adds the element at end of list
list1=['a',4,5,2]
list1.append(3)
print(list1)
#extend is used to merg two list
list2=[3,6,7,7]
list1.extend(list2)
print(list1)
#insert elemnt at specfic index
list1.insert(3,'t')
print(list1)

list1.remove('a')
print(list1)
list1.pop()
print(list1)
list1.pop(2)
print(list1)
list1.clear()
print(list1)
del list1
print(list1)