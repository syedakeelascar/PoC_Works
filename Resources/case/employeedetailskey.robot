*** Settings ***
Library  SeleniumLibrary
Variables  ../../PageObjects/case/employeedetails.py

*** Keywords ***
Validate Employee Details page header
    page should contain element    ${pge_ed_header}
