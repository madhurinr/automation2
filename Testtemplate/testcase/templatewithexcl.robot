*** Settings ***
Library     SeleniumLibrary
Resource    ..//Testtemplate/resourcefile.robot
Suite Setup  open google  https://www.thetestingworld.com/index.php?option=com_users&view=login&Itemid=587  chrome
Suite Teardown  close page
Library     DataDriver  file=C:/Users/Mallikarjun/PycharmProjects/newproject/Testtemplate/testdata/testdatasheet.xlsx  sheet_name=logindata
Test Template   invalidlogin


*** Test Cases ***
validate invalid credentials

*** Keywords ***
invalidlogin
    [Arguments]  ${username}    ${password}
    enter username  ${username}
    enter password  ${password}
    click login buton
    page should contain error

