*** Settings ***
Library     SeleniumLibrary
Resource    ../robotframework/resource/reskeyword.robot
Documentation   test case to check retun kewword
Test Timeout    10 sec

*** Test Cases ***
checkretun keyword
   [Documentation]      to check retun statement

   ${val}=   open facebook   https://www.facebook.com/   chrome
#   [Timeout]    10seconds
   log to console   ${val}


*** Keywords ***
Provided precondition
    Setup system under test