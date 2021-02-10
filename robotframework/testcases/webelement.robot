*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test title
    open browser  https://login.yahoo.com/?.src=&.intl=us&.lang=en-US&.do  chrome
    maximize browser window
    ${element}  Get Webelement  name:username
    click element  ${element}
    input text  ${element}  hello
    click element  name:signin
    #    close all browsers
*** Keywords ***
Provided precondition
    Setup system under test