*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/casedetails.py

*** Keywords ***
Case Details Page header

    page should contain    ${cd_header}


Click on this page continue button

    click element    ${btn_cd_continue}

