import xml.etree.ElementTree as ET
tree=ET.parse("D:/Madhuri/xmlparsing/bne-swagger-soapui-project.xml")
root=tree.getroot()
print((root[1].attrib)['id'])
val=root[1].attrib
print(val['id'])
for i,j in val.items():
    if j == 'fd6ad49e-cdde-49ca-8da0-01bfcdec9d80':
        print(i)
#print(root[0][0].text)
subxml=ET.fromstring(root[0][0].text)
print(subxml.tag)
for z in subxml:
    val=z.attrib
    #print(val)
    if val['key']=='Report to Generate':
        print("element found")
        break

for g in root:
    if g.tag == '{http://eviware.com/soapui/config}savedRecentRuns' :
        print(g.text)
    # if val.keys()=='Key':
    #     print(val.values())
    #print(z.tag)
#print(subxml[0].attrib)

# validation=root.find('interface').attrib
# # print(validation)

# for i in root.findall('interface'):
#     id=i.find('description').text
# print(id.text)