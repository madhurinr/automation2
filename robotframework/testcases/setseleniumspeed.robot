*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test title
    Open browser    https://www.google.co.in/   chrome
    ${speed}=   get selenium speed    #sets speed at at which each line of code should run
    log to console     ${speed}
    set selenium speed  2 seconds
    ${speed1}=   get selenium speed
    log to console     ${speed1}
    set selenium timeout    3 seconds
    ${timeout}=     get selenium timeout   # set the time with which elment should be identifyied if element is located early it will not wait for specified time
    log to console  ${timeout}
    input text      //input[@title="Search"]    apple
   # sleep   10 seconds # waits for 10 seconds and  executes the next line
    ${implicit wat}=  get Selenium Implicit Wait
    log to console  ${implicit wat}
    set Selenium Implicit Wait  10 second
    ${implicit wat1}=  get Selenium Implicit Wait # this alows ro search for element multiple time untill element is found
    log to console  ${implicit wat1}
    Element Text Should Be  //input[@title="Search"]/following::div[4]//following-sibling::div/div[1]/span[1]   Apple
    log to console  located apple
    close browser


*** Keywords ***
Provided precondition
    Setup system under test