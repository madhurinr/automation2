*** Settings ***
Library  SeleniumLibrary
Resource  ..//dynamicelement/dynamicres/keywords.robot


*** Test Cases ***
log to timepage
    open times browser
    get current time on load
    close page
login to gmail
    open gamil