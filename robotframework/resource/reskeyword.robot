*** Settings ***
Library     SeleniumLibrary
Library     ../robotframework/externallibrary/pythonfile.py
Library    ../robotframework/externallibrary/autoitsample.py

*** Variables ***
${url}      https://www.thetestingworld.com/
${browser}      chrome


*** Keywords ***
openbrowser and max
    open browser    ${url}  ${browser}
    Maximize Browser Window
open facebook
    [Arguments]     ${furl}     ${fbrowser}
    open browser    ${furl}     ${fbrowser}
    Maximize Browser Window
    ${title}=    get title
    [Return]    ${title}

open udemy
    open browser    https://www.udemy.com/  chrome
    Maximize Browser Window
close udemy
    close browser
search course
    click element   //input[@placeholder="Search for anything"]
    Press keys   //input[@placeholder="Search for anything"]    python

before suite exe
    log to console  this is suite set up
after suite exe
    log to console  this is after suite set up
find sumb of value
    [Arguments]    ${A}    ${B}
    ${totle}    sum     ${A}    ${B}
    [Return]    ${totle}

print my name
    [Arguments]     ${name}
    myname  ${name}

autoit_uplaod image
    selectfile


