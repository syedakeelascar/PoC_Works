*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/acknowledgementPage.py

*** Keywords ***
Validate Acknowledgement page header
    page should contain element    ${acknowledgement_header}


Verify Success Message For Claim Submission
    wait until element is visible    ${print_acknowledgement_button}    10s
    page should contain element    ${claim_submited}
    page should contain element    ${paid_fees}

