import json
def readjson():

    openfile=open('C:/Users/Mallikarjun/PycharmProjects/newproject/robotframework/testcases/API/jsonfile.txt','r')
    file_data=openfile.read()
    print(type(file_data))
    filecontent=json.loads(file_data)
    print(type(filecontent))
    print(type(json.dumps(filecontent)))
    return filecontent

