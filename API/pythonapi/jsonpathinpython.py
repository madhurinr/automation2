import requests
import json
import jsonpath

getreq=requests.get("http://thetestingworldapi.com//api/studentsDetails/555")
print(getreq.json())
firstname=jsonpath.jsonpath(getreq.json(),'data.first_name')
print(firstname[0])
print(getreq.json()['data']['id'])
val=json.loads(getreq.text)
for i in val['data']:
    print(i)