*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/declaration.py



*** Keywords ***
Click on checkbox and Ok button
    set selenium speed    2
    click element    ${check_box}
    click element    ${btn_ok}

Validate Declaration page header
    set selenium speed    2
    page should contain    ${pge_header}


