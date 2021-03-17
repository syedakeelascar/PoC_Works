*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/loginkey.robot
Resource  ../Resources/hompagekey.robot
Resource  ../Resources/caseandclaimtypekeys.robot
Resource  ../Resources/declaration.robot
Resource  ../Resources/employeedetailskey.robot
Resource  ../Resources/casedetailskey.robot
Resource  ../Resources/companydetailskey.robot
Resource  ../Resources/reviewandsubmitkey.robot
Resource  ../Resources/paymentreviewkey.robot
Resource  ../Resources/makepaymentkey.robot
Resource  ../Resources/acknowledgementkey.robot
Variables  ../TestData/testd.py


*** Test Cases ***
Open Url
    Open apliaction

Login To Applicatioon
    [Tags]  sanity  regression
    Given Username field  ${username}
    And Password field  ${password}
    And Click On Login Button
    When Click On File A Case
    Then Page header validation

Check Declaration page header
    Given Select Claim Type
    When Click on submit button
    Then Validate Declaration page header

Validate Case Details Page header and Company Details page heder validation

    Given Click on checkbox and Ok button
    When Employee Details page header validation
    And Click on continue button
    Then Case Details Page header
    When Click on this page continue button
    Then Company Details page heder validation

Validate Make Payment Header validate
    Given Click on Company Details continue button
    When Review and Submit page header
    And Click on review and submit page continue button
    Then Payment Review Header Name
    When Payment Review Click Button Make Payment
    Then Make Payment Header validate

Validate Registration Complete
    Given Click on PayLah
    When Click On Make Payment Continue Button
    And Click On Final Continue Button In Make Payment Page
    Then Acknowladgement page header
    And Verify Claim Submited
    And Verify Registration Fee Paid

Close The present Browser
  Close my browser


