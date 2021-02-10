*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
check dynamicelement
    Open Browser  https://the-internet.herokuapp.com/dynamic_content  chrome
    ${text}=  get text  //*[@id="content"]//child::div[3]
    log to console   ${text}

