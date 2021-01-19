*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
verify browser
#    Open browser    https://www.thetestingworld.com/testings/     Chrome
#    Maximize Browser Window
#    input text      //input[@name="fld_username"]      madhuri
#    Click Element     //input[@name="fld_username"]
#    Select Radio Button    add_type     office
#    Select Checkbox     //input[@placeholder="Zip code"]//following::div/input[1]
#    Checkbox Should Be Selected     //input[@placeholder="Zip code"]//following::div/input[1]
#    click link      //a[contains(text(),'Read Detail')]
#   # ${window}=  Get Window Handles
#   Mouse Over   //a[@class="close"]
#   click element    //a[@class="close"]
#    Click Button    //input[@type="submit"]
#    set selenium speed      1 seconds
#    Select From List By Index     //Select[@name="sex"]   2
#    Select From List By value       name:sex    1
#    Select from list by label       name:sex    Female
   # close window
   #Close browser
   print hello  madhuri  bangalore
   ${varible2}  set variable    this us user defiend variable2
   log to console      ${varible2}

*** Keywords ***
print hello
    [Arguments]     ${name}     ${place}
    log to console  ${name}
    ${varible}  set variable    this us user defiend variable
    log to console      ${varible}





