*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
Test title
    open browser    https://www.google.co.in/   chrome
    go to   https://robotframework.org/
    go back
    ${url1}=    get location
    log to console  ${url1}

*** Keywords ***
Provided precondition
    Setup system under test