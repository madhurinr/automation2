*** Settings ***
Library     SeleniumLibrary
Resource    ../robotframework/resource/userkeyword.robot

*** Test Cases ***
#Add data to excel
#    inservalue in excel
read datafrom excel
#    open browser    https://www.thetestingworld.com/testing     chrome
#    Maximize Browser Window
#    click element   //a[contains(text(),'Login')]

    ${row1}=    read maxrow value   userdetails
    ${col2}=    read colval value  userdetails
    ${colfor username}  convert to integer  1
    ${colfor password}  convert to integer  2
    FOR  ${i}  IN RANGE   2   ${row1}+1
#        FOR  ${j}  IN RANGE   1   ${col2}+1
        ${username}=    get each cellvalue  ${i}  ${colfor username}
        log to console      row ${i}
        ${Password}=    get each cellvalue  ${i}  ${colfor password}
#    input text  name:username   ${username}
#    input text  name:password   ${Password}
        log to console  uname ${username}
        log to console  pwd ${Password}
    END
    close browser



