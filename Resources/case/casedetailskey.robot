*** Settings ***
Library  SeleniumLibrary
Variables  ../../PageObjects/case/casedetails.py

*** Keywords ***
Validate Case Details Page header
    page should contain element    ${cd_header}

