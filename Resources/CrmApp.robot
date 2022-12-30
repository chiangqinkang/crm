*** Settings ***
Resource        ../Resources/PO/AddCustomer.robot
Resource        ../Resources/PO/Customers.robot
Resource        ../Resources/PO/Home.robot
Resource        ../Resources/PO/LoggedOut.robot
Resource        ../Resources/PO/SignIn.robot
Resource        ../Resources/PO/TopNav.robot


*** Variables ***

*** Keywords ***
Go To "Home" Page
    Home.Navigate To

Login with valid credentials
    [Arguments]    ${Email}    ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Login With Valid Credentials    ${Email}    ${Password}
    Customers.Verify Page Loaded

Add New Customer
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added Successfully

Sign Out
    TopNav.Click "Sign Out" Link
    LoggedOut.Verify Page Loaded