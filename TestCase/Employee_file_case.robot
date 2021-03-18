*** Settings ***
Resource    ../Resources/common/common_utils.resource
Resource    ../Resources/common/common_keywords.resource
Resource    ../Resources/loginkey.robot
Resource    ../Resources/hompagekey.robot
Resource    ../Resources/case/caseandclaimtypekeys.robot
Resource    ../Resources/case/declaration.robot
Resource    ../Resources/case/employeedetailskey.robot
Resource    ../Resources/case/casedetailskey.robot
Resource    ../Resources/case/companydetailskey.robot
Resource    ../Resources/case/reviewandsubmitkey.robot
Resource    ../Resources/case/paymentreviewkey.robot
Resource    ../Resources/case/makepaymentkey.robot
Resource    ../Resources/case/acknowledgementkey.robot
Variables    ../TestData/testd.py

Suite Setup    Open application
Suite Teardown    Close All Browsers

Documentation    Login as an employee, file a case and logout from the application.
Force Tags    regression

*** Test Cases ***
As an Employee, Login To Application
    [Tags]    sanity
    When Login To iWorks Application    ${employee_username}    ${employee_password}
    Then Validate Successful Login


Employee is able to file a case by selecting the case type and claim type
    [Setup]    Fail Workflow If Previous Step Failed
    Given Click On File A Case
    When Select Case Type And Claim Type
    Then Click on submit button


Validate & Fill Declaration page for filing a case
    [Setup]    Fail Workflow If Previous Step Failed
    When Validate Declaration page header
    Then Click on checkbox and Ok button


Validate & Fill Employee Details page for filing a case
    [Setup]    Fail Workflow If Previous Step Failed
    When Validate Employee Details page header
    Then Click On Continue Button


Validate & Fill Case Details page for filing a case
    [Setup]    Fail Workflow If Previous Step Failed
    When Validate Case Details Page header
    Then Click On Continue Button


Validate & Fill Company Details page for filing a case
    [Setup]    Fail Workflow If Previous Step Failed
    When Validate Company Details page header
    Then Click On Continue Button


Review the data showed in the Review and Submit page for filing a case
    [Setup]    Fail Workflow If Previous Step Failed
    When Validate Review and Submit page header
    Then Click On Continue Button


Validate & Make Payment in the Payment Review page
    [Setup]    Fail Workflow If Previous Step Failed
    When Validate Payment Review Page
    Then Click On Make Payment Button


Perform Payment in the Make Payment page
    [Setup]    Fail Workflow If Previous Step Failed
    Given Validate Make Payment Page
    When Select Payment Mode
    Then Click On Continue Button
    And Click On Continue Button


Validate Case Filing Complete and Log out from application
    [Setup]    Fail Workflow If Previous Step Failed
    Given Validate Acknowledgement page header
    When Verify Success Message For Claim Submission
    Then Logout From iWorks Application
