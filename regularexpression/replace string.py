import re
text="this is used to replace this string with used A.B.H.I"
textoreplace=re.compile("[re]place")
text=textoreplace.sub("replacedddd",text)
findtext=re.findall('.\..\..\.',text)
print(findtext)
print(text)