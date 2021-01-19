a=" hello ,world "
print(a)
print(a.strip())#removes starting and ending spaces
print(a.lower())
print(a.upper())
print(a.replace('h','f'))
print(a.split(',')) #splits the list at specifed sperator and retuns the list
print(a.split( )) #splits after space by default
#check  string
y='he'in a
x='wo' not in a
print(y)
print(x)
#string concatination
d='ball'
c='pen'
print(d+ " "+c) #concatination of string with space

print(len(a)) #prints the length
