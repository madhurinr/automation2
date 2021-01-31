import requests
import json
import jsonpath
postdata={'first_name':'abc','middle_name':'M','last_name':'N','date_of_birth':'11/09/1987'}
postrquest=requests.post("http://thetestingworldapi.com//api/studentsDetails",data=postdata)
print(postrquest)
print(postrquest.json()['id'])

stid=postrquest.json()['id']
stringid=str(stid)
putdata= {'id':stid,'first_name':'1rama','middle_name':'M','last_name':'N','date_of_birth':'11/09/1987'}
url="http://thetestingworldapi.com//api/studentsDetails/"+str(stid)
putrequest=requests.put(url,data=putdata)

print(putrequest)
print(putrequest.json())
getrequest=requests.get(url)
print(getrequest)
print(getrequest.json())
print("firstname is " +getrequest.json()['data']['first_name'])
patchdata={'middle_name':'siddha'}
patchrequest=requests.patch(url,patchdata)
print(patchrequest.status_code)
