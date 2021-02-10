*** Settings ***
library  SeleniumLibrary

*** Test Cases ***
dynamiccontorl
    open browser  https://the-internet.herokuapp.com/dynamic_controls   chrome
    ${title}  get title
    log to console  ${title}
    #Wait Until Element Is Visible  //*[contains(text(),' A checkbox')]  10 seconds
#    @{button}=  Get WebElements  //*[@type="checkbox"]
#    log to console   ${button}[0]
#    FOR  ${i}  IN  @{button}
#      log to console  ${i}
#      ${element}=  Get Element Attribute  ${i}  type
#      log to console   ${element}
#      Run Keyword If  '${element}' == 'checkbox'  click button  ${i}
#
#    END

     Page Should Contain Element  //*[@type="checkbox"]
#    Page Should Contain Element  //button[contains(text(),'Remove')]
#
     click element  //*[@type="checkbox"]
#    click element  //button[contains(text(),'Remove')]
#    Set Selenium Implicit Wait  8 seconds
#    Page Should Contain Element  //button[contains(text(),'Add')]
#    Page Should Contain  It's gone!
#    click element  Page Should Contain Element


*** Keywords ***
click button
    [Arguments]  ${button}
    click element   ${button}

