import xml.etree.ElementTree as ET
data=''' <note id="123" name="madhuri">abc
<to>Tove
<street>lalabang</street>
<landmark>fairchice</landmark>
</to>
<from>Jani</from>
<heading place="bang" pin="233">Reminder</heading>
<body>Don't forget me this weekend!</body>
</note>'''
root=ET.fromstring(data)
print(root[0].tag,root.text)
print(root[2].attrib['pin'])
print(type(root))
for i in root:
    print(i.attrib)
for j in root:
    print(j.text)
for g in root:
    print(g.tag)
print(root[0][1].tag)
for f in root[0]:
    print(f.tag)