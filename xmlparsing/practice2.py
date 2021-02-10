import xml.etree.ElementTree as ET

tree=ET.parse("D:/Madhuri/xmlparsing/bne-swagger-soapui-project.xml")
root=tree.getroot()
count=0
for i in root:
    #print(i.tag)
    #print(type(i.tag))
    if 'interface' in i.tag:
        count=count+1
        break
resource=0
# for j in root[count]:
#     print(j)
#     if j.tag=='{http://eviware.com/soapui/config}resource':
#         resource=resource+1
#         print(resource[1].attrib)
#         subele=j[resource].tag
# print(j)
#print(root[1].tag)
for x in root.find("{http://eviware.com/soapui/config}interface"):
        #print(x.tag)
        xres = []
        if 'resource' in x.tag:
            res=x
            for list in x:
                xres.append(x)
print(xres[1].tag)
resourceattr = xres[1].attrib
print(resourceattr['id'])
for ele in xres[0]:
    print(ele.tag)

