*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
Test waitcontion
    Open Browser    https://www.facebook.com/   chrome
    Maximize Browser Window
    press keys  name:email      myname
    press keys   name:login     //13
    Set Selenium timeout    10 seconds
#    ${title}=   Get Title
#    log to console      ${title}
#    #Wait Until Page Contains   Log In
#    ${elemntcount}=     Get Element Count   //*[contains(text(),'Log in to Facebook')]
#    log to console  element count is ${elemntcount}
    ${webelements}  Get WebElements  (//*[contains(text(),'Log in to Facebook')])
    FOR  ${i}  IN  @{webelements}
        log to console  ${i}
        ${value}=     Get Element Attribute    ${i}    id
        log to console  ${value}
        log to console  hi
    END
    Wait Until Element Is Visible    (//*[contains(text(),'Log in to Facebook')])[2]     40 seconds
    Close All Browsers

*** Keywords ***
Provided precondition
    Setup system under test