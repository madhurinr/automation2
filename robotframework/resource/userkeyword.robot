*** Settings ***
Library     SeleniumLibrary
Library    ../testdata/exceltestdata.py
Library    ../excel/readexcel.py




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