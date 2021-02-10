*** Settings ***
Library     SeleniumLibrary
Resource   ..//Testtemplate/resourcefile.robot
Suite Setup  open google  https://www.thetestingworld.com/index.php?option=com_users&view=login&Itemid=587  chrome
Suite Teardown  close page
Test Template  invalidlogin



*** Test Cases ***
Invalide pass and pwd    m    h
valid user    viji     fesf
empty username and pwd      ${EMPTY}  pwd



*** Keywords ***
invalidlogin
    [Arguments]     ${username}  ${password}
    enter username  ${username}
    enter password  ${password}
    click login buton
    page should contain error
