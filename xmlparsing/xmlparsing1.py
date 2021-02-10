import xml.etree.ElementTree as ET
tree=ET.parse('D:/Madhuri/xmlparsing/sample.xml')
root=tree.getroot()
print(root[1].tag,root[0].text)
print("tags are :-------")
for i in root:
    print(i.tag)
print("attrib are ")
for j in root:
     print(j.attrib)
     print(j.text)

text=root.findtext('to','Tove').strip()
if text=='Tove':
   print("this is my text"+text)

