import xml.etree.ElementTree as ET

tree = ET.parse("D:/Madhuri/xmlparsing/sample.xml")
root = tree.getroot()
print(root.tag)
for i in root.findall('to'):
    toval = i.find('address').text

    print(toval)
fromva = root.find('to').text.strip()
print(fromva)
if fromva == "Tove":
    print("textfound ")
else:
    print("text not found")
