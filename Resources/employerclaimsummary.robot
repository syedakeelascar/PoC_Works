*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/employercasesummary.py

*** Keywords ***
Employee Claim Summary Header Validation
    set selenium speed    2
    page should contain    ${casesummary_header}

Click On Related Actions
    set selenium speed    2
    click element    ${btn_relatedaction}

Click on E-Verification
    set selenium speed    3
    click element    ${btn_everification}



