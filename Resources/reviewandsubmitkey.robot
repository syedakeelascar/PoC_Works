*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/reviewandsubmit.py

*** Keywords ***
Validate Review and Submit page header
    wait until element is visible    ${rs_header}    10s
    page should contain element    ${rs_header}
