*** Settings ***
Library  SeleniumLibray
Variables  ${EXECDIR}/dynamicelement/variables/variable.yaml

*** Keywords ***
open times browser
    open browser  ${URL}  ${Browser}
    maximize browser window

close page
    close browser
get current time on load
    ${time}=  get text  ${TIME}
    log to console  ${time}

open gamil
    open browser  ${GMAIL_URL}  ${Browser}
    maximize browser window

