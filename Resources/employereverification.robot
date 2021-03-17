*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary
Library    resources_common/common_custom_keywords.py
Variables  ../PageObjects/employereverification.py

*** Keywords ***
Validate Base Claim Details Is Present
    wait until element is visible    ${base_claim_details}    10s
    page should contain element    ${base_claim_details}
    scroll element into view    ${txt_remarks}


Select Basic Pay and Enter Details
    [Documentation]    Selects 'Basic Pay' checkbox and fills the details in the text box.
    ...    If a details are passed as input then that will be filled, else it will be randomly populated.
    [Arguments]    ${orgbpay}=${EMPTY}
    click element    //*[contains(text(),'Basic Pay')]/../../../td[1]//input[@type='checkbox']/../../..
    ${pay}=    Run Keyword If    '${orgbpay}'=='${EMPTY}'    Generate Random Float With Custom Decimal    100    10000    2
    ...        ELSE    Set Variable    ${orgbpay}
    wait until element is enabled    ${base_pay}
    Input text    ${base_pay}    ${pay}


Select Overtime Hours and Enter Details
    [Documentation]    Selects 'Overtime Hours' checkbox and fills the details in the text box
    ...    If a details are passed as input then that will be filled, else it will be randomly populated.
    [Arguments]    ${overtime}=${EMPTY}
    click element    //*[contains(text(),'Overtime Hours')]/../../../td[1]//input[@type='checkbox']/../../..
    ${overtime}=    Run Keyword If    '${overtime}'=='${EMPTY}'    Generate Random Float With Custom Decimal    1    100    1
    ...        ELSE    Set Variable    ${overtime}
    wait until element is enabled    ${txt_overtime}
    Input text    ${txt_overtime}    ${overtime}


Select Claim Amount and Enter Details
    [Documentation]    Selects 'Claim Amount' checkbox and fills the details in the text box
    ...    If a details are passed as input then that will be filled, else it will be randomly populated.
    [Arguments]    ${orgclaimamount}=${EMPTY}
    click element    //*[contains(text(),'Claim Amount')]/../../../td[1]//input[@type='checkbox']/../../..
    ${claim}=    Run Keyword If    '${orgclaimamount}'=='${EMPTY}'    Generate Random Float With Custom Decimal    100    10000    2
    ...        ELSE    Set Variable    ${orgclaimamount}
    wait until element is enabled    ${txt_claimamount}
    Input text    ${txt_claimamount}    ${claim}


Enter Remarks
    [Documentation]    Fills the remarks field with text in the dispute form.
    ...    If a remarks are passed as input then that will be filled, else it will be randomly populated.
    [Arguments]    ${remarks}=${EMPTY}
    click element    ${txt_remarks}
    ${remarks_text}=    Run Keyword If    '${remarks}'=='${EMPTY}'    FakerLibrary.paragraph
    ...                 ELSE    Set Variable    ${remarks}
    Input text    ${txt_remarks}    ${remarks_text}


Select Reason For Not Acepting
    [Documentation]    Randomly selects a reason for not accepting the claim.
    ${reason}=    get random item from list    ${reasons}
    click element    //label[contains(@class,'RadioSelect') and text()='${reason}']


Click On Submit Button
    wait until element is visible    ${btn_evrificationsubmit}    10s
    click element    ${btn_evrificationsubmit}


Validate Sucessful Dispute Claim has been submitted and sent to Claimant Message
    wait until element is visible    ${sucessfull_message}    10s
    page should contain element    ${sucessfull_message}