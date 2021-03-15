*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/casedetails.py

*** Keywords ***
Case Details Page header
    set selenium speed    4
    page should contain    ${cd_header}


Click on this page continue button
    set selenium speed    4
    click element    ${btn_cd_continue}

