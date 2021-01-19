#sort list
list=[4,1,2,3]
list.sort()
print(list)
#sort in dec
list.sort(reverse= True)
print(list)
#customise sort using key arugument
list2=['e','r','t','Y','I']
list2.sort(key=str.upper)
print(list2)
#reverse
list2.reverse()
print(list2)