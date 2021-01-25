*** Settings ***
Library  seleniumLibrary
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary

*** Test Cases ***
delete request
    create session  baseurl     http://thetestingworldapi.com/
    ${response}=    delete on session   baseurl  api/Students/89407     401
    log to console  ${response.content}
    ${status}=  convert to string  ${response.status_code}
    should be equal  401    ${status}
    @{del_response}=    get value from json  ${response.json()}  Message
    ${value}  get from list  ${del_response}  0
    should be equal  ${value}   Authorization has been denied for this request.

