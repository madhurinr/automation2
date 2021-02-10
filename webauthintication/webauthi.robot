*** Settings ***
Library  SeleniumLibrary
Library  Browser

*** Test Cases ***
handle web auth
    New Browser    chromium
    New Context    httpCredentials={'username': 'admin', 'password': 'admin'}
    New Page    https://the-internet.herokuapp.com/basic_auth

#url authenitcation
    open browser  https://admin:admin@the-internet.herokuapp.com/basic_auth  chrome
