list=['fruit','book','things']
newlist=[i for i in list if 'r' in i]
newlist.append('new')
print(newlist)

#we can manupluate the experession
newlist2=[x if x=='u' else 'orange' for x in list]
print(newlist2)

list3=['apple','banaa','orange']
newlist3=[y for y in list3 if y=='banaa']
print(newlist3)


class person:
    def __init__(self,name):
        self.name=name

    def printname(self):
        print(self.name)
obj=person('madam')
obj.printname()