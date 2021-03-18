*** Settings ***
Library  SeleniumLibrary
Variables  ../../PageObjects/case/companydetails.py

*** Keywords ***
Validate Company Details page header
    page should contain element    ${comd_header}

