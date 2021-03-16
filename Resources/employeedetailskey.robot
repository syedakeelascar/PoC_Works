*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/employeedetails.py

*** Keywords ***
Employee Details page header validation

    page should contain    ${pge_ed_header}

Click on continue button

    click element    ${btn_continue}
