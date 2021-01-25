*** Settings ***
Library     RequestsLibrary
*** Variables ***
${baseurl}  http://thetestingworldapi.com
*** Test Cases ***
first api
    create session  gettechincalskills  ${baseurl}
    ${response}=    GET On Session     gettechincalskills  api/studentsDetails
    log to console  ${response.status_code}
    log to console  ${response.content}

*** Keywords ***
Provided precondition
    Setup system under test