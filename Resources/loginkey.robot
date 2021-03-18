*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/loginPage.py
Variables    ../TestData/testd.py

*** Keywords ***
Open application
    open browser    ${application_url}    ${browser}
    maximize browser window
    Set Selenium Timeout    ${selenium_timeout}
    Log To Console    Application opened: ${application_url}


Enter Username
    [Arguments]    ${username}
    Input Text    ${txt_un}    ${username}


Enter Password
    [Arguments]    ${password}
    Input Password    ${txt_pw}    ${password}


Click On Login Button
    click element    ${bt_login}


Verify title of the page
     Title Should Be    HOME - iWork


Login To iWorks Application
    [Documentation]    Used to login to the application by navigating to the URL and then entering the username and password.
    ...    The username and password values can be passed in as arguments
    [Arguments]    ${username}    ${pwd}

    Log To Console    Logging in to Application...${space}    no_newline=True
    Enter Username    ${username}
    Enter Password    ${pwd}
    Click On Login Button
