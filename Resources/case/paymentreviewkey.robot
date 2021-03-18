*** Settings ***
Library  SeleniumLibrary
Variables  ../../PageObjects/case/paymentreview.py

*** Keywords ***
Validate Payment Review Page
    wait until element is visible    ${case_ref_num}    10s
    page should contain element    ${preview_header}
    page should contain element    ${case_ref_num}
    page should contain element    ${amount_payable}


Click On Make Payment Button
    [Documentation]    Clicks on the 'Make Payment' button in the Payment Review page
    wait until element is visible    ${make_payment_button}
    Scroll Element Into View    ${make_payment_button}
    sleep    1s
    click button    ${make_payment_button}
