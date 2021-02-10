import re
phone= "999-33-44-33"
x= re.search("\w{3}-\w{2}-\w{2}-\w{2}",phone)
print(x)
if re.search("\d{3}-\d{2}-\d{2}-\d{2}",phone):
    print("number found")

if re.search("\d.-\d.-\d.-\d.",phone):
    print('again number found')