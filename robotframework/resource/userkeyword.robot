*** Settings ***
Library     SeleniumLibrary
Library    ../testdata/exceltestdata.py
Library    ../excel/readexcel.py
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections
Library  ../robotframework/testcases/API/jsonpython.py



*** Keywords ***
inservalue in excel
    insertvalue

read maxrow value
    [Arguments]     ${sheetname1}
    ${rowval}=    readmax_row     ${sheetname1}
    [Return]    ${rowval}

read cell value
    [Arguments]     ${sheetname2}    ${row}  ${col}
    ${cellval}=     returncell      ${sheetname2}    ${row}  ${col}
    [Return]    ${cellval}
read colval value
    [Arguments]     ${sheetname3}
    ${colval}=     readmaxcol      ${sheetname3}
    [Return]    ${colval}

get each cellvalue
    [Arguments]     ${row}  ${col}
    ${value}=   getcellval  ${row}  ${col}
    [Return]     ${value}

get_request_api
    [Arguments]  ${baseurl}  ${resourceurl}
    Create session  url  ${baseurl}
    ${response}=  get on session  url  ${resourceurl}
    [Return]  ${response}
post_request_api
    [Arguments]  ${baseurl}  ${resourceurl}  &{values_to_add}
    ${data}=  create dictionary  &{values_to_add}
    create session  url  ${baseurl}
    ${post_response}=  post on session  url  ${resourceurl}  data=${data}
    [Return]  ${post_response}
Put_request_api
    [Arguments]  ${baseurl}  ${put url}  &{values_to_add}
    create session  url  ${baseurl}
    ${put_reponse}=  put on session  url  ${put url}  data=&{values_to_add}
    [Return]  ${put_reponse}

pyton_post
    ${response}=  readjson
    [Return]  ${response}

