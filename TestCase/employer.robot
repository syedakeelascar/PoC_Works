*** Settings ***
Resource  ../Resources/loginkey.robot
Resource  ../Resources/hompagekey.robot
Resource  ../Resources/employerclaimsummary.robot
Resource  ../Resources/employereverification.robot
Variables  ../TestData/testd.py


Suite Setup    Open application
#Suite Teardown    Close All Browsers

Documentation    Login as a Employer, Validate a claim, submit dispute and logout from the application.
*** Test Cases ***
As an Employer, Login To Application
    [Tags]  sanity  regression
    When Login To iWorks Application    ${employer_username}    ${employer_password}
    Then Validate Successful Login


Open a case and Validate Claim Summary page header
    [Setup]   Fail Workflow If Previous Step Failed
    Given Click on My Case
    When Click on Case Id In Employer Home Page
    Then Validate Employee Claim Summary Header


Start e-verification for selected case
    [Setup]   Fail Workflow If Previous Step Failed
    Given Click On Related Actions
    When Click on E-Verification
    Then Validate Base Claim Details Is Present


Provide the Basic Claim details and Submit
    [Setup]   Fail Workflow If Previous Step Failed
    Given Select Basic Pay and Enter Details
    When Select Overtime Hours and Enter Details
    And Select Claim Amount and Enter Details
    And Enter Remarks
    And Select Reason For Not Acepting
    Then Click On Submit Button


Validate Dispute Claim Submission and Log out from application
    [Setup]   Fail Workflow If Previous Step Failed
    When Validate Sucessful Dispute Claim has been submitted and sent to Claimant Message
    Then Logout From iWorks Application
