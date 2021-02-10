*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://mail.google.com/mail/u/0/?tab=wm&ogbl#inbox
${browser}  chrome


*** Keywords ***
open google
    [Arguments]  ${url}    ${browser}
    open browser  ${url}  ${browser}
    Maximize Browser Window

click login buton
    click element  //button[contains(text(),'Log in')]
enter username
    [Arguments]  ${username}
    input text    id:username  ${username}
enter password
    [Arguments]  ${password}
    input text  name:password   ${password}
page should contain error
    Page Should Contain    Username and password do not match or you do not have an account yet.
close page
    close browser