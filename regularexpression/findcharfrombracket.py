import re
text="this is The new line char of the page"
match=re.findall('[a-cM-U]he',text)
print(match)