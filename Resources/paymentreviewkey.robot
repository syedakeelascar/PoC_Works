*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/paymentreview.py

*** Keywords ***
Payment Review Header Name
    set selenium speed    4
    page should contain    ${preview_header}

Payment Review Click Button Make Payment
    set selenium speed    4
    click element    ${bt_make_payment}