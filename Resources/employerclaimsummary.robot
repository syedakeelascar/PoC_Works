*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/employercasesummary.py

*** Keywords ***
Validate Employee Claim Summary Header
    wait until element is visible    ${casesummary_header}    10s
    page should contain element    ${casesummary_header}


Click On Related Actions
    wait until element is visible    ${btn_relatedaction}    10s
    click element    ${btn_relatedaction}


Click on E-Verification
    wait until element is visible    ${btn_everification}    10s
    click element    ${btn_everification}



