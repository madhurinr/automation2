*** Settings ***
Library     SeleniumLibrary
Resource    ../robotframework/resource/reskeyword.robot

*** Test Cases ***
test webpage
    openbrowser and max
    close allbrowsers


