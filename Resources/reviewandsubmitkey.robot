*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/reviewandsubmit.py

*** Keywords ***
Review and Submit page header
    set selenium speed    4
    page should contain    ${rs_header}

Click on review and submit page continue button
    set selenium speed    4
    click element    ${btn_rs_continue}


