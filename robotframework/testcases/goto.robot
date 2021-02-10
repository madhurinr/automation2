*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
Test title
    [Tags]  genric
    open browser    https://www.google.co.in/   chrome
    go to   https://robotframework.org/  Firefox
    go back
    ${url1}=    get location
    log to console  ${url1}

*** Keywords ***
Provided precondition
    Setup system under test