*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary

*** Variables ***
${baseurl}=  http://thetestingworldapi.com/
${updatename}=  testing
${firstname}=  mana


*** Test Cases ***
End_to_End testing
    create session  url  ${baseurl}
    ${data}=  create dictionary  first_name=${firstname}  middle_name=mm  last_name=ht  date_of_birth=03/11/1987
    ${post_reponse}=  post on session  url  api/studentsDetails  data=${data}
    log to console  ${post_reponse.status_code}
    @{joson_valu}=  get value from json  ${post_reponse.json()}  first_name
    ${value}=  get from list  ${joson_valu}  0
    log to console  ${value}
    ${id}=  Get From Dictionary  ${post_reponse.json()}  id
    log to console  ${id}

    ${put_data}=  create dictionary  id=${id}  first_name=${updatename}  middle_name=mm  last_name=ht  date_of_birth=03/11/1987
    ${put_response}=  put on session  url  api/studentsDetails/${id}  data=${put_data}
    log to console  ${put_response.status_code}
    create session  geturl  http://thetestingworldapi.com
    ${get_response}=  get on session  geturl  /api/studentsDetails/${id}
    log to console  ${get_response.status_code}
    log to console  ${get_response.json()}
    @{newname}=  get value from json  ${get_response.json()}  data.first_name
    ${newnamevalue}=  get from list  ${newname}  0
    log to console  ${newnamevalue}
    ${delete_response}=  delete on session  url  api/studentsDetails/${id}
    log to console  ${delete_response.status_code}
    log to console  ${delete_response.json()}
    @{result}=  get value from json  ${delete_response.json()}  msg
    ${deleteoutput}=  get from list  ${result}  0
    log to console  ${deleteoutput}