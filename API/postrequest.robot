*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections

*** Test Cases ***
post request
    create session  postreq  http://thetestingworldapi.com/
    &{post_data}=   create dictionary  first_name=madhuri  middle_name=nn  last_name=rr  date_of_birth=08/09/1976
    &{headder}=     create dictionary   Content-Type=application/json
    ${response}=  POST On Session  postreq  /api/studentsDetails  data=&{post_data}
    log to console   ${response.status_code}
    log to console   ${response.content}
    ${status}=  convert to string  ${response.status_code}
    should be equal  201  ${status}
    Dictionary Should Contain Key  ${response.json()}  id
    ${data}=  Get From Dictionary  ${response.json()}  first_name
    log to console  ${data}

    #&{response_data}=   get value from json  ${response.json()}     id
#    ${value}=  get from list  ${response_data}  0
   # ${dataconversion}=  convert to string  ${response.json()}

    #should be equal  ${dataconversion}  {'id': 89652, 'first_name': 'madhuri', 'middle_name': 'nn', 'last_name': 'rr', 'date_of_birth': '08/09/1976'}


