*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/declaration.py

*** Keywords ***
Click on checkbox and Ok button
    wait until element is visible    ${check_box}    10s
    click element    ${check_box}
    click element    ${btn_ok}


Validate Declaration page header
    page should contain element    ${pge_header}


