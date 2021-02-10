*** Settings ***
Library  SeleniumLibrary
Variables  ${EXECDIR}/variables/test.yaml
*** Test Cases ***
Test title
    open browser  https://www.thetestingworld.com/index.php?option=com_users&view=login&Itemid=587  chrome
    log to console  ${EXECDIR}
    input text  id:username  ${username}

*** Keywords ***
Provided precondition
    Setup system under test