*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/declaration.py



*** Keywords ***
Click on checkbox and Ok button

    click element    ${check_box}
    click element    ${btn_ok}

Validate Declaration page header

    page should contain    ${pge_header}


