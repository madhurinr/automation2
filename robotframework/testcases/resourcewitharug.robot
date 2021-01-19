*** Settings ***
Library     SeleniumLibrary
Resource    ../robotframework/resource/reskeyword.robot

*** Test Cases ***
facebook test
    open facebook   https://www.facebook.com/   chrome
    close browser


