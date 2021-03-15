*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/loginkey.robot
Resource  ../Resources/hompagekey.robot
Variables  ../TestData/testd.py

*** Keywords ***
Test Setup
    Open appliaction

Login To application
    [Tags]  sanity  regression
    Given Username field  ${username}
    And Password field  ${password}
    When Click On Login Button
    Then Page header

Test Teardown
        close browser