*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/makepayment.py

*** Keywords ***
Make Payment Header validate
    set selenium speed    4
    page should contain    ${mpayment}


Click on PayLah
    set selenium speed    2
    click element    ${rdo_payLah}

Click On Make Payment Continue Button
    set selenium speed    2
    click element    ${btn_mpcontinue}

Click On Final Continue Button In Make Payment Page
    set selenium speed    2
    click element    ${btn_mpscontinue}