*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
Test title
    open browser    https://www.thetestingworld.com/#   chrome
    mouse over  //*[contains(text(),'TUTORIAL ')]
    mouse over  //a[@title="FUNCTIONAL AUTOMATION"]
    Double Click Element    //a[@title="FUNCTIONAL AUTOMATION"]
    mouse down    //a[contains(text(),'DOWNLOAD COURSE')]
    mouse up    //a[contains(text(),'DOWNLOAD COURSE')]
    sleep  5 seconds
    go back
    go to   https://www.thetestingworld.com/#
    close browser


*** Keywords ***
Provided precondition
    Setup system under test