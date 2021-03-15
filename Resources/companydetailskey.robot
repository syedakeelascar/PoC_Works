*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/companydetails.py

*** Keywords ***
Company Details page heder validation
    set selenium speed    4
    page should contain    ${comd_header}

Click on Company Details continue button
    set selenium speed    4
    click element    ${btn_comd_continue}

