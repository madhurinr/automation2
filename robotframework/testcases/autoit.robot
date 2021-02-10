*** Settings ***
Library  SeleniumLibrary
Resource  ../robotframework/resource/reskeyword.robot


*** Test Cases ***
uploadimage
    open googleimage click on image icon
*** Keywords ***
open googleimage click on image icon
    open browser  https://www.google.co.in/imghp?hl=en&tab=ri&authuser=0&ogbl  chrome
    Maximize Browser Window
    click element  //input[@title="Search"]
    Element Should Be Focused  //input[@title="Search"]
    Element Should Be Visible  //*[@aria-label="Search by image"]
    click element  //*[@aria-label="Search by image"]
    Wait Until Page Contains Element  //*[contains(text(),"Search by image")]
    click element  //*[contains(text(),'Upload an image')]
    Element Should Be Visible  //input[@type="file"]
    mouse over  //input[@type="file"]
   # Choose File  //input[@type="file"]  D://Madhuri/study doc/Screenshot_1.png
    Press Keys  //input[@type="file"]  //13
    sleep  5 seconds
    autoit uploadfile   D:\\Madhuri\\study doc\\Screenshot_1.png
    Set Selenium Implicit Wait  10 seconds
    Wait Until Page Contains Element  //*[@type="text"]  10 seconds
    Page Should Contain Element   //*[@id="sbtc"]//child::div[1]/a/div[2]
    #click element  //*[@id="sbtc"]//child::div[1]/a/div[2]
    click element  //*[@class="BwoPOe"]
    click element   //*[contains(text(),'Upload an image')]
    mouse over  //*[@id="awyMjb"]
    press keys  //*[@id="awyMjb"]  //13
    sleep  4 seconds
    autoit uploadfile   D:\\Madhuri\\image\\ie.png



autoit uploadfile
    [Arguments]  ${url}
    autoit_uplaod image  ${url}
