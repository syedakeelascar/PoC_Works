*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/caseandclaimtype.py

*** Keywords ***
Click Radio Button Retrenchment
    set selenium speed    3
    select radio button    ${name}  ${value}

Select Claim Type
   click element    ${claim_type}
    press keys    None  ENTER

Click on submit button

    click element    ${btn_submit}

Page header validation

    page should contain    ${header}




