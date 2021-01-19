*** Settings ***
Library     SeleniumLibrary
Resource    ../robotframework/resource/reskeyword.robot
Test Setup      open udemy
Test Teardown   close udemy
Suite Setup     before suite exe
Suite Teardown  after suite exe
Force Tags  all_tc
Default Tags    hll
*** Test Cases ***
find title
  [Tags]   othercase
   ${title}=    get title
   log to console   ${title}
search type of course
   [Tags]   case2  study
   search course
TC3
    log to console  tc3
TC4
   log to console  hello
