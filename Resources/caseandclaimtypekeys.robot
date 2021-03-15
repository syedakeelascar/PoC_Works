*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/caseandclaimtype.py

*** Keywords ***
Click Radio Button Retrenchment
    set selenium speed    3
    select radio button    ${name}  ${value}

Select Claim Type
    set selenium speed    4
    click element    ${claim_type}
    press keys    None  ENTER

Click on submit button
    set selenium speed    2
    click element    ${btn_submit}

Page header validation
    set selenium speed    8
    page should contain    ${header}




