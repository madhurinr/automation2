set1={'1','e','true'}
print(set1)
print(type(set1))
#add single item
set1.add(3)
set2=set1.copy()
print(set1)
set1.update(set2)
print(set2)
set2.remove('1')
print(set2)
set2.pop()
print(set2)
newset=set1.union(set2)
print("new set is " +str(newset))