import re
text="this is the text to be searched in thismnc reg"
x=re.search("to be",text)
#print(x)

for i in re.finditer("this.",text):
    new=i.span()
    print(new)
    print(text[new[0]:new[1]])

