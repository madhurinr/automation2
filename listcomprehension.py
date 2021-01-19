list=['fruit','book','things']
newlist=[i for i in list if 'r' in i]
newlist.append('new')
print(newlist)

#we can manupluate the experession
newlist2=[x if x=='u' else 'orange' for x in list]
print(newlist2)