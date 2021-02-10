import re
text="hai this is madhuri i am looking for new jon"
searchtext=re.findall('[^thi]m',text)
print(searchtext)