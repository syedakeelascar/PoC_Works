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
Test Setup
    Open appliaction

Creating employee file a case
    [Tags]  sanity  regression
    Given Username field  ${username}
    And Password field  ${password}
    And Click On Login Button
    When Click On File A Case
    Then Page header validation
    When Select Claim Type
    And Click on submit button
    Then Validate Declaration page header
    When Click on checkbox and Ok button
    Then Employee Details page header validation
    When Click on continue button
    Then Case Details Page header
    When Click on this page continue button
    Then Company Details page heder validation
    When Click on Company Details continue button
    Then Review and Submit page header
    When Click on review and submit page continue button
    Then Payment Review Header Name
    When Payment Review Click Button Make Payment
    Then Make Payment Header validate
    When Click on PayLah
    And Click On Make Payment Continue Button
    And Click On Final Continue Button In Make Payment Page
    Then Acknowladgement page header
    And Verify Claim Submited
    And Verify Registration Fee Paid

#Test Teardown
#    close browser


