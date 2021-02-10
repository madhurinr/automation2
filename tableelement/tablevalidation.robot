*** Settings ***
Library     SeleniumLibrary
Library  Collections
Suite Teardown  close browser

*** Test Cases ***
table data validation
    open browser  http://testautomationpractice.blogspot.com/  chrome
    maximize browser window
    ${row}  get element count  //table[@name="BookTable"]/tbody/tr
    ${col}  get element count  //table[@name="BookTable"]/tbody/tr/th
    @{collist}  Get WebElements  //table[@name="BookTable"]/tbody/tr/th
    ${header}  get text  ${collist}[1]
    log to console  ${header}

    log to console  ${row}
    log to console  ${col}

    ${count}=  Convert To Integer  0
    FOR  ${colHeader}  IN  @{collist}
        ${headername}  get text  ${colHeader}
        ${count}=  Evaluate    int(${count})+int(1)
        log to console  ${headername}
        Exit For Loop If  '${headername}' == 'Author'

    END
   log to console  ${count}
   ${auo_count}=  Convert To Integer  0
   @{autova_list}  Get WebElements  //table[@name="BookTable"]/tbody/tr/td[${count}]
   FOR  ${authorValue}  IN   @{autova_list}
     ${value}  get text  ${authorValue}
     log to console  ${value}
#     ${auo_count1}=  Set Variable If
#     ... '${value}' == 'Mukesh'
#     ...  ${auo_count}=  Evaluate  int(${auo_count})+int(1)
#
#     log to console  ${auo_count}
#
    END
#   log to console  ${auo_count1}


#
#    Table Cell Should Contain  //table[@name="BookTable"]  2  2  Amit
#    #Table Column Should Contain  //table[@name="BookTable"]  2 Amit
#    ${ee}  get text  //table[@name="BookTable"]/tbody/tr[2]/td[3]
#    log to console  ${ee}
#    close browser

subject column
    ${sub_col_count}=  get_subject_columncount
    log to console     ${sub_col_count}
*** Keywords ***
get_subject_columncount
    @{get_Header_list}=  Get WebElements   //table[@name="BookTable"]/tbody/tr/th
    ${sub_col_num}=  Convert To Integer  0
    FOR  ${sub_val}  IN  @{get_Header_list}
        ${sub_dat}=  get text  ${sub_val}
        ${sub_col_num}=  Evaluate    int(${sub_col_num})+int(1)
        Exit For Loop If  '${sub_dat}' == 'Subject'
    END
    [RETURN]  ${sub_dat}