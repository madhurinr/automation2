import re
text="hi today its raning heavily do u think so same 123 @"
x=re.search("^hi.*@$",text) #search starts hi and ends with @
if x:
    print("yes search found")
else:
    print("no char found")

y=re.findall("\d",text)  #find all digit
print(y)

a=re.findall("[a-g]",text)
print(a)
a=re.findall("in*",text)
print(a)
a=re.findall("in+",text)
print(a)
a=re.findall("in{1}",text)
print(a)
a=re.findall("heav|ff",text)
print(a)
d=re.findall("od",text)
print(d)
# [a-m]
# # \d digit
# # *0 oe more mutiple accorance of char
# # +1 or more accourance
# # .. any anumber of car
# # ^ with
# # $ends with
# #     {} specifed number of accurance
# #     | eithe one od is present
z=re.search("ame",text)
print(z)

text2="madhuri.revanna@gmail.com"
findtext=re.findall("\w..*@\w..*.\w",text2)
print(findtext)

text3="madhuri.revanna@gmail.com"
findtext2=re.findall("^m..*@\w..*.om$",text2)
print(findtext2)