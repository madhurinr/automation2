*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
*** Test Cases ***
test multiple browser
    open browser    https://www.google.co.in/   headlesschrome
    Maximize Browser Window
    open browser    https://www.thetestingworld.com/    headlessFirefox      second
    Maximize Browser Window
    switch browser  1
    ${url1}     get location
    log to console      ${url1}
    switch browser  second
    ${url2}     get location
    log to console      ${url2}
    close all browsers

*** Keywords ***
Provided precondition
    Setup system under test