*** Settings ***
Library  SeleniumLibrary
Variables    ../PageObjects/homepage.py
Variables    ../PageObjects/employermycase.py
*** Keywords ***
Click On File A Case
    set selenium speed    1
#    click image    ${fileacase}
    : FOR   ${i}   IN RANGE    1   19
     \  press keys    None  TAB

     press keys    None  ENTER

Click on My Case
    set selenium speed    2
    click element    ${my_case}

Employer Dashboard Header Validate
    set selenium speed    3
    page should contain    ${Employer_header}

Click on Case Id In Employer Home Page
    set selenium speed    3
    click element    ${caseid}





