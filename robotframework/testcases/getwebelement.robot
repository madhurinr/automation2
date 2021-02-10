*** Settings ***
Library     SeleniumLibrary
Resource    ../robotframework/resource/reskeyword.robot
*** Variables ***
${var1}=  Convert To Integer    2
*** Test Cases ***
print webelement
    [Tags]  genric
    open udemy
    ${elemt}    Get WebElement      //input[@placeholder="Search for anything"]
    log to console      ${elemt}
    ${vaue}     Get Element Attribute   ${elemt}    id
    log to console     ${vaue}
    ${count}    Get Element Count   ${vaue}
    log to console  ${count}
    close allbrowsers
    ${SUMOF VALUE}      find sumb of value  Convert To Integer 2   Convert To Integer 4
    Log to console      ${SUMOF VALUE}
    log to console  ${var1}
    print my name   Madhuri


*** Keywords ***
Provided precondition
    Setup system under test