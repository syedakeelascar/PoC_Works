*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/employeedetails.py

*** Keywords ***
Validate Employee Details page header
    page should contain element    ${pge_ed_header}
