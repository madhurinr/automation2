*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary
Resource  ../robotframework/resource/userkeyword.robot

*** Variables ***
${baseurl}  http://thetestingworldapi.com/
${get resourceurl}  /api/studentsDetails/555
&{values_to_add}  first_name=pran  middle_name=n  last_name=M  date_of_birth=12/09/1988
&{updated_to_add}  first_name=pranmya  middle_name=n  last_name=M  date_of_birth=12/09/1988

${put url}      /api/studentsDetails/




*** Test Cases ***
fetch sutident details
    ${get_response}=  get_request_api  ${baseurl}  ${get resourceurl}
    log to console  ${get_response.status_code}
    log to console  ${get_response.json()}
    @{get_response_data}=  Get value from json  ${get_response.json()}  data.id
    ${finalval}=  get from list  ${get_response_data}  0
    log to console  ${finalval}

post request details
    ${post response}=  post_request_api  ${baseurl}  ${get resourceurl}  &{values_to_add}
    log to console  ${post response.status_code}
    log to console  ${post response.json()}
    ${id}=  get from dictionary  ${post response.json()}  id
    log to console  ${post response}
PUT_request_details
    ${postoutput}=  post_request_api  ${baseurl}  ${get resourceurl}  &{values_to_add}
    ${id}=  get from dictionary  ${postoutput.json()}  id
    log to console  ${id}
    log to console  new value ${id}

    Set To Dictionary  ${updated_to_add}  id  ${id}
    log to console  ${updated_to_add}
    ${putresponse}=  Put_request_api  ${baseurl}  ${put url}${id}  &{updated_to_add}
    log to console  ${putresponse.status_code}
    log to console  ${putresponse.json()}


