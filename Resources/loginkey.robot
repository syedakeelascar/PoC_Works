*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/logpag.py
Variables  ../TestData/testd.py

*** Keywords ***
Open appliaction
#    create webdriver    chrome    executable_path="..\driver\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window
#    set selenium speed    3
    set selenium timeout    30

Close my browser
    close browser

Username field
    [Arguments]  ${username}
    #wait until page contains  LOGIN Panel
#    sleep  3
    input text  ${txt_un}  ${username}

Password field
    [Arguments]  ${password}
    Input text  ${txt_pw}  ${password}

Click On Login Button
    click element   ${bt_login}


Verify title of the page
#    Title Should Be   OrangeHRM
     set selenium speed    30
     Title Should Be   HOME - iWork

Page header
    set selenium speed    10
    page should contain    Welcome, Kenneth!