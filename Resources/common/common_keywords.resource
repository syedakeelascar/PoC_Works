*** Settings ***
Library    common_custom_keywords.py
Resource    common_utils.resource
Variables    ../../PageObjects/commonObjects.py

*** Keywords ***
Open iWorks Application
    [Documentation]    Opens the application URL.
    [Arguments]    ${url}

    Run Keyword If    '${browser}'=='chrome'    Open Chrome Browser
    Go To    ${url}
    Run Keyword And Ignore Error    Alert Should Not Be Present
    Wait Until Element Is Visible    id=un    30s
    Log To Console    Application opened: ${url}


Wait For Appian Page To Completely Load
    [Documentation]    Detects any site and wait for page to load completely
    ...                May be unreliable when server is under heavy load
    [Arguments]    ${timer}=${empty}

    ${prev_kw}=    Register Keyword To Run On Failure    NONE
    ${timer}=    Run Keyword If    '${timer}'=="${empty}"    Get Selenium Timeout
    ...                    ELSE    Set Variable    ${timer}

    ${found_site_loader}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${APPIAN_LOADER}    3sec
    Run Keyword If    ${found_site_loader}==${true}    Run Keywords
    ...    Register Keyword To Run On Failure    ${prev_kw}    AND
    ...    Run Keyword And Continue On Failure    Wait Until Element Is Not Visible    ${APPIAN_LOADER}    ${timer}    AND
    ...    Wait Until Page Does Not Contain Element    ${APPIAN_LOADER}    ${timer}    Page failed to load after ${timer}
    Register Keyword To Run On Failure    ${prev_kw}


Click On Continue Button
    [Documentation]    Clicks on the 'Continue' button in the forms
    wait until element is visible    ${continue_button}
    Scroll Element Into View    ${continue_button}
    sleep    1s
    click button    ${continue_button}


Logout From iWorks Application
    [Documentation]    Method to logout from Application

    Log To Console    Logging out from Application...${space}    no_newline=True
    Wait Until Element Is Visible    ${USER_OPTION_MENU}    5sec
    Click Element    ${USER_OPTION_MENU}
    Wait Until Element Is Visible    ${SIGN_OUT_BUTTON}    5sec
    Click Element    ${SIGN_OUT_BUTTON}
    Run Keyword And Ignore Error    Alert Should Not Be Present    timeout=3 s
    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}
    Log To Console    Done!