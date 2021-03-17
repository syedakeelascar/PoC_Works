*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/companydetails.py

*** Keywords ***
Validate Company Details page header
    page should contain element    ${comd_header}

