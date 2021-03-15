*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/employeedetails.py

*** Keywords ***
Employee Details page header validation
    set selenium speed    2
    page should contain    ${pge_ed_header}

Click on continue button
    set selenium speed    2
    click element    ${btn_continue}
