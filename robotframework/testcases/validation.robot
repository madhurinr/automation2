*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
validation2
    [Documentation]     this to check page content
    open browser    https://www.thetestingworld.com/    chrome
    Maximize Browser Window
    click element   //a[contains(text(),'Login')]
    Page Should Contain Textfield   name:username
    Set Selenium Implicit Wait      3 seconds
    Select Checkbox     //*[@type="checkbox"]
    Page Should Contain Checkbox    //*[@type="checkbox"]
    Checkbox Should Be Selected     //*[@type="checkbox"]
    Unselect Checkbox   //*[@type="checkbox"]
    Checkbox Should Not Be Selected     //*[@type="checkbox"]
    Element Text Should Be    //*[contains(text(),'Make sure you dont miss interesting happenings by joining our newsletter program.')]    Make sure you dont miss interesting happenings by joining our newsletter program.    text found sucesfuly
    Element Should Be Visible    //*[contains(text(),'Make sure you dont miss interesting happenings by joining our newsletter program.')]      element is visble
    Title Should Be    Login
    close allbrowsers

*** Keywords ***
Provided precondition
    Setup system under test