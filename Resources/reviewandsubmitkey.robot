*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/reviewandsubmit.py

*** Keywords ***
Review and Submit page header

    page should contain    ${rs_header}

Click on review and submit page continue button

    click element    ${btn_rs_continue}


