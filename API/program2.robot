*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Suite Setup      Create Session      baseurl  http://thetestingworldapi.com/

*** Variables ***
${stid}   89407
${statuscode}=  200



*** Test Cases ***
get student id
    ${code}  convert to integer  200
    ${response}=    get on session  baseurl     api/studentsDetails/${stid}
#    log to console  expect status code ${code}
    log to console  ${response.status_code}
#
    should be equal  ${response.status_code}  ${code}
#    ${JSON_response}=  to json  ${response.content}
     log to console  ${response.json()}
#    ${JSON_response}=  ${response.json()}  ${response.content}
    @{json_val}=    get value from json  ${response.json()}  data.first_name
    ${get_value}=   get from list   ${json_val}  0
    log to console  ${get_value}
    ${finalstatus}=  should be equal  ${get_value}   sample string 233
    log to console  ${finalstatus}



