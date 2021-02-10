import re
text= "search of count of word in this line"
patt=re.findall("of",text)
print(patt)
match=re.findall("[o]f",text)
for i in match:
    print(i)
