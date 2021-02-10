*** Settings ***
Library     SeleniumLibrary
Resource    ..//Testtemplate/resourcefile.robot
Suite Setup   open google   https://www.thetestingworld.com/index.php?option=com_users&view=login&Itemid=587  chrome
Suite Teardown  close page
#Test Template  invalid login

*** Test Cases ***
test invalid login
    [Template]          invalid login
     madhurimallikarjun2020@gmail.com         Annapurer
     mmmm@gmail.com                          dgdg

*** Keywords ***
invalid login
    [Arguments]     ${username}  ${password}
    enter username  ${username}
    enter password  ${password}
    click login buton
    page should contain error
