*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections

*** Test Cases ***
put request
    create session  base url  http://thetestingworldapi.com
#    ${reponse}=  get on session  base url  api/studentsDetails/89669
#    log to console  ${reponse.content}
   ${data}=  create dictionary  id=555  first_name=viji  middle_name=1nn  last_name=1rr  date_of_birth=29/09/1976
   ${request}=  put on session  base url  /api/studentsDetails/555  data=&{data}
   log to console  ${request.status_code}
   log to console  ${request.json()}
   ${validation}=  Get Dictionary Items  ${request.json()}
   List Should Contain Value  ${validation}  true
   log to console  sucessfully found
   Dictionary Should Contain Value	${request.json()}  true
#
#   log to console  ${data}
#id":89669,"first_name":"madhuri","middle_name":"nn","last_name":"rr","date_of_birth":"08/09/1976"