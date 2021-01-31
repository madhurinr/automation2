import requests
import json
get_response=requests.get("http://thetestingworldapi.com//api/studentsDetails/555")
print(get_response.text)
print(type(get_response.text))
# json_to_dct=json.load(get_response.json())
print(type(get_response.json()))
x=get_response.json()
id=x['data']['id']
print("id is " + str(id))
firstname=x['data']['first_name']
print('firstname is ' +firstname)
#use loads to conver json obj to pthon dictionary
#use dumps to consvert python string to json
status=x['status']
print(status)