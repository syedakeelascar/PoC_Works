*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/employereverification.py

*** Keywords ***
Validate Base Claim Details Is Present

    page should contain    ${base_claim_details}

Click On Base Pay

    : FOR   ${i}   IN RANGE    1   5
     \  press keys    None  TAB

     press keys    None  SPACE

Actual Base Pay Information

    [Arguments]  ${orgbpay}
    Input text  ${base_pay}  ${orgbpay}

Click On Overtime Hours

    : FOR   ${i}   IN RANGE    1   3
     \  press keys    None  TAB

     press keys    None  SPACE

Actual Overtime Hours

     [Arguments]  ${overtime}
     Input text  ${txt_overtime}  ${overtime}

Click on Cliam Amount

    : FOR   ${i}   IN RANGE    1   2
     \  press keys    None  TAB

     press keys    None  SPACE

Actual Claim Amount

     [Arguments]  ${orgclaimamount}
     Input text  ${txt_claimamount}  ${orgclaimamount}

Enter Remarks

    : FOR   ${i}   IN RANGE    1   2
     \  press keys    None  TAB

     press keys    None  SPACE
     [Arguments]  ${orgremarks}
     Input text  ${txt_remarks}  ${orgremarks}

Click On Reason For Not Acepting

    : FOR   ${i}   IN RANGE    1   2
     \  press keys    None  TAB

     press keys    None  SPACE

Click On Submit Button

      click element    ${btn_evrificationsubmit}

Validate Sucessful Dispute Claim has been submitted and sent to Claimant Message

    page should contain    ${sucessfull_message}