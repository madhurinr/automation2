*** Settings ***
Suite Setup     suite setup key
Suite Teardown  Suite teardown

*** Keywords ***
suite setup key
    log to console  this suite setup
Suite teardown
    log to console  this this suite teardown