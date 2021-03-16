*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/makepayment.py

*** Keywords ***
Make Payment Header validate

    page should contain    ${mpayment}


Click on PayLah

    click element    ${rdo_payLah}

Click On Make Payment Continue Button

    click element    ${btn_mpcontinue}

Click On Final Continue Button In Make Payment Page

    click element    ${btn_mpscontinue}