*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/acknowladgement.py

*** Keywords ***
Acknowladgement page header
    set selenium speed    2
    page should contain    ${acknowledgement_header}

Verify Claim Submited
    set selenium speed    2
    page should contain    ${claim_submited}

Verify Registration Fee Paid
    set selenium speed    2
    page should contain    ${paid_fees}

