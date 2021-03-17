*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/acknowladgement.py

*** Keywords ***
Acknowladgement page header

    page should contain    ${acknowledgement_header}

Verify Claim Submited

    page should contain    ${claim_submited}

Verify Registration Fee Paid

    page should contain    ${paid_fees}

