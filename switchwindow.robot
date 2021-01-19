*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
window switch
    open browser    https://robotframework.org/     chrome
    Maximize Browser Window
    sleep   2 seconds
    click element   //a[@href="https://aito.ai/rpa/"]
        ${title}=   Get Title
    log to console  ${title}
   # switch window   Aito.ai - RPA
#    switch window    New
#    ${url1}     get location
#    log to console  ${url1}
#    switch window   Main
    @{windows}  Get Window Handles
    FOR  ${j}  IN  @{windows}
        log to console  ${j}
        switch window   ${j}
        ${loc}=     get location
        log to console  ${loc}

#    ${wind}=  Get Window Handles
#    log to console  ${wind}
#    switch window   ${wind}
    END
    page should contain     Aito
    log to console      title found
    sleep  2 seconds
    close allbrowsers

*** Keywords ***
Provided precondition
    Setup system under test