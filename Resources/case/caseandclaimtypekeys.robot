*** Settings ***
Library  SeleniumLibrary
Library    ../common/common_custom_keywords.py
Resource    ../common/common_keywords.resource
Variables  ../../PageObjects/case/caseandclaimtype.py

*** Keywords ***
Randomly select a case type
    ${case_type}=    get random item from list    ${case_type_options}
    wait until element is visible    ${case_type_radio_button}    20s
    click element    //label[contains(@class,'RadioSelect') and text()='${case_type}']


Randomly select a claim type
    ${claim_type}=    get random item from list    ${claim_type_options}
    wait until element is visible    ${claim_type_drop_down}    20s
    click element    ${claim_type_drop_down}
    wait until element is visible    xpath=(.//ul//div[text()='${claim_type}'])    10s
    click element    xpath=(.//ul//div[text()='${claim_type}'])


Select Case Type And Claim Type
    wait until element is visible     ${header}    20s
    Randomly select a case type
    Randomly select a claim type


Click on submit button
    wait until element is visible    ${btn_submit}    20s
    click element    ${btn_submit}
    Wait For Appian Page To Completely Load


