*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  RequestsLibrary
Library  JSONLibrary
Resource  ../robotframework/resource/userkeyword.robot

*** Test Cases ***
post request
    create session  url  http://thetestingworldapi.com
    ${json_data}=  pyton_post
    log to console  ${json_data}
    ${post_response}=  post on session  url  api/studentsDetails  data=${json_data}
    log to console  ${post_response.status_code}

