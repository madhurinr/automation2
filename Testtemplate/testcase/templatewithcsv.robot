*** Settings ***
Library  SeleniumLibrary
Resource  ../Testtemplate/resourcefile.robot
Library  DataDriver  file=C:/Users/Mallikarjun/PycharmProjects/newproject/Testtemplate/testdata/csvdata.csv
Suite Setup  open google  https://www.thetestingworld.com/index.php?option=com_users&view=login&Itemid=587  chrome
Suite Teardown  close page
Test Template  invalid credintials

*** Test Cases ***
validate username with csv


*** Keywords ***
invalid credintials
    [Arguments]  ${username}  ${password}
    enter username  ${username}
    enter password  ${password}
    click login buton
    page should contain error