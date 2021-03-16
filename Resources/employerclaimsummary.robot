*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/employercasesummary.py

*** Keywords ***
Employee Claim Summary Header Validation

    page should contain    ${casesummary_header}

Click On Related Actions

    click element    ${btn_relatedaction}

Click on E-Verification

    click element    ${btn_everification}



