*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary
Resource            ../Resources/common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test
#Run the script:
#robot -d results tests/crm.robot

*** Variables ***
${BROWSER} =                chrome
${URl} =                    https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =      admin@robotframework.com
${VALID_LOGIN_PASSWORD} =   qwe

*** Test Cases ***
Should be able to Login With Valid Credentials
    [Documentation]         This is some basic info about the test
    [Tags]                  1001    Smoke   Home

    CrmApp.Go To "Home" Page


Should be able to Login With Valid Credentials
    [Documentation]         This is some basic info about the test
    [Tags]                  1002    Smoke   Login

    CrmApp.Go To "Home" Page
    CrmApp.Login with valid credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}

Should be able to Logout
    [Documentation]         Test the logout
    [Tags]                  1004    Smoke   Login

    CrmApp.Go To "Home" Page
    CrmApp.Login with valid credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should be able to add new customer
    [Documentation]         Test the logout
    [Tags]                  1006    Smoke   Login

    CrmApp.Go To "Home" Page
    CrmApp.Login with valid credentials     ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out



*** Keywords ***
