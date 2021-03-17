*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/paymentreview.py

*** Keywords ***
Payment Review Header Name

    page should contain    ${preview_header}

Payment Review Click Button Make Payment

    click element    ${bt_make_payment}