*** Settings ***
Library  SeleniumLibrary
Library    resources_common/common_custom_keywords.py
Variables  ../PageObjects/makepayment.py

*** Keywords ***
Validate Make Payment Page
    wait until element is visible    ${payment_mode_radio}    10s
    page should contain element    ${mpayment}
    page should contain element    ${case_ref_num}
    page should contain element    ${amount_payable}


Select Payment Mode
    [Documentation]    By default randomly selects the payment mode for filing the case. If a payment mode is passed as input then that will be selected
    [Arguments]    ${payment_mode}=Randomly
    ${selected_payment_mode}=    Run Keyword If    '${payment_mode}'=='Randomly'    get random item from list    ${payment_modes}
    ...                 ELSE    Set Variable    ${payment_mode}
    click element    //label[contains(@class,'RadioSelect') and text()='${selected_payment_mode}']