*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/loginkey.robot
Resource  ../Resources/hompagekey.robot
Resource  ../Resources/employerclaimsummary.robot
Resource  ../Resources/employereverification.robot
Variables  ../TestData/testd.py

*** Test Cases ***
Open Url
    Open appliaction

Login To Application
    [Tags]  sanity  regression
    Given Username field  ${employer_username}
    And Password field  ${employer_password}
    When Click On Login Button
    Then Employer Dashboard Header Validate

Validate Claim Summary page header
    Given Click on My Case
    When Click on Case Id In Employer Home Page
    Then Employee Claim Summary Header Validation

Validate Base Claim Details
    Given Click On Related Actions
    When Click on E-Verification
    Then Validate Base Claim Details Is Present

Validate Cliam has been submitted and sent to Claimant Message
    Given Click On Base Pay
    And Actual Base Pay Information  ${orgbpay}
    When Click On Overtime Hours
    And Actual Overtime Hours   ${overtime}
    And Click on Cliam Amount
    And Actual Claim Amount  ${orgclaimamount}
    And Enter Remarks  ${orgremarks}
    And Click On Reason For Not Acepting
    And Click On Submit Button
    Then Validate Sucessful Dispute Claim has been submitted and sent to Claimant Message

Close The present Browser
  Close my browser










