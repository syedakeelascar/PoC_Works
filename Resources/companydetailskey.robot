*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/companydetails.py

*** Keywords ***
Company Details page heder validation

    page should contain    ${comd_header}

Click on Company Details continue button

    click element    ${btn_comd_continue}

