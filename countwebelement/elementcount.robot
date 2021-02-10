*** Settings ***
Library     SeleniumLibrary
Library  Collections
Suite Setup  open facebook
#Suite Teardown  close allbrowsers
*** Test Cases ***
#Test title
#    ${linkcount}=  get element count  //a
#    log to console  ${linkcount}
#    @{linklist}  create list
#    FOR  ${i}  IN RANGE  1  ${linkcount}+1
#        ${linkname}=  get text  (//a)[${i}]
#        Insert Into List  ${linklist}  0  ${linkname}
#        log to console   ${linklist}
#
#    END
#

count inputtext
    ${inputcount}=  get element count  //input
    log to console  ${inputcount}

    FOR  ${j}  IN RANGE  1  ${inputcount}+1
    ${inputtext}=  Get Element Attribute  (//input)[${j}]   id
    run keyword if  '${inputtext}' == 'email'  input text  (//input)[${j}]  arju
    run keyword if  '${inputtext}' == 'pass'  input text  (//input)[${j}]  arjupwd
    log to console  ${inputtext}
    END


*** Keywords ***
open facebook
    open browser  https://www.facebook.com/  chrome


