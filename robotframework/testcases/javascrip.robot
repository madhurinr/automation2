*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary


*** Test Cases ***
Test title
    open browser    https://www.youtube.com/    chrome
    Maximize Browser Window
    execute javascript  window.scrollTo(0,1050)

*** Keywords ***
Provided precondition
    Setup system under test