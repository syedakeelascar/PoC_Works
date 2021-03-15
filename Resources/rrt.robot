*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}  https://opensource-demo.orangehrmlive.com/
${Browser}  chrome


*** Keywords ***
Open my Browser
    open browser    ${URL}  ${Browser}
    maximize browser window

Close my browser
    close browser

Username field
    [Arguments]  ${username}
    input text  id:txtUsername  ${username}

Password field
    [Arguments]  ${password}
    Input text  id:txtPassword  ${password}

Click On Login Button
    click element   xpath://input[@id="btnLogin"]

Empty Password message
    page should contain  Invalid credentials




