*** Settings ***
Library    SeleniumLibrary
Resource    common/common_keywords.resource
Variables    ../PageObjects/homePage.py
Variables    ../PageObjects/employermycase.py

*** Keywords ***
Validate Successful Login
    Wait Until Element Is Visible    ${USER_OPTION_MENU}    20sec
    Wait For Appian Page To Completely Load
    log to console    Successful Login!


Click On File A Case
    wait until element is visible    ${fileacase}    10s
    click element    ${fileacase}


Click on My Case
    wait until element is visible    ${my_case}    10s
    click element    ${my_case}


Validate Employer Dashboard Header
    page should contain element    ${Employer_header}


Click on Case Id In Employer Home Page
    wait until element is visible    ${caseid}    10s
    click element    ${caseid}
