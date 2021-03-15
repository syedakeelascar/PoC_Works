*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/employereverification.py

*** Keywords ***
Validate Base Claim Details Is Present
    set selenium speed    4
    page should contain    ${base_claim_details}

Click On Base Pay
    set selenium speed    1
    : FOR   ${i}   IN RANGE    1   5
     \  press keys    None  TAB

     press keys    None  SPACE

Actual Base Pay Information
    set selenium speed    1
    [Arguments]  ${orgbpay}
    Input text  ${base_pay}  ${orgbpay}

Click On Overtime Hours
    set selenium speed    1
    : FOR   ${i}   IN RANGE    1   3
     \  press keys    None  TAB

     press keys    None  SPACE

Actual Overtime Hours
    set selenium speed    1
     [Arguments]  ${overtime}
     Input text  ${txt_overtime}  ${overtime}

Click on Cliam Amount
    set selenium speed    1
    : FOR   ${i}   IN RANGE    1   2
     \  press keys    None  TAB

     press keys    None  SPACE

Actual Claim Amount
    set selenium speed    1
     [Arguments]  ${orgclaimamount}
     Input text  ${txt_claimamount}  ${orgclaimamount}

Enter Remarks
    set selenium speed    2
    : FOR   ${i}   IN RANGE    1   2
     \  press keys    None  TAB

     press keys    None  SPACE
     [Arguments]  ${orgremarks}
     Input text  ${txt_remarks}  ${orgremarks}

Click On Reason For Not Acepting
     set selenium speed    2
    : FOR   ${i}   IN RANGE    1   2
     \  press keys    None  TAB

     press keys    None  SPACE

Click On Submit Button
    set selenium speed    1
      click element    ${btn_evrificationsubmit}

Validate Sucessful Dispute Claim has been submitted and sent to Claimant Message
    set selenium speed    3
    page should contain    ${sucessfull_message}