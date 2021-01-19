*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Library     Collections
*** Test Cases ***
check list
    @{list1}    create list     hai    madam    my name     is  madhuri
    ${lenghtof list}    get length     ${list1}
    log to console      ${lenghtof list}
    ${getvalue}=  get from list   ${list1}    2
    log to console      ${getvalue}
    ${key}=  set variable   open browser
    ${close}=   set variable    close browser
    run keyword     ${key}      https://www.google.co.in/       chrome
    run keyword if  ${lenghtof list}==5     ${close}

*** Keywords ***