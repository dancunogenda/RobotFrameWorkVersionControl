*** Settings ***
Library    SeleniumLibrary   
Library    OperatingSystem 

Suite Setup       Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown    
Test Setup        Log    Iam inside Test Set Up    
Test Teardown     Log    I am inside Test Teardown

Default Tags      Sanity

*** Variables ***
# SCALAR VARIABLES
${URL}        https://opensource-demo.orangehrmlive.com

# LIST VARIABLES
#@{variable_name}    item1    item2    item3
@{CREDENTIALS}    Admin    admin123

#DICTIONARY VARIABLES
#&{variable_name}    K1=V1    K2=V2
&{LOGINDATA}    username=Admin    password=admin123

#ENVIRONMENT VARIABLES
# These are inbuilt variables
*** Keywords ***
#LIBRARY KEYWORDS

#USER KEYWORDS -- can be created by users
# Test Steps/Cases can be reused easily and helps in change management, faster and more
# efficient

LoginKeyword
    Input Text            id=txtUsername    @{CREDENTIALS}[0]
    Input Password        id=txtPassword    &{LOGINDATA}[password]
    Click Button          id=btnLogin
    
## SETUP AND TEARDOWN
# TC SetUp - run before every TC
# TC Teardown - will run after every TC
# TC Setup - will run before TS
# TC Teardown - will run after Ts

*** Test Cases ***

Sample Login Test
    [Documentation]       This is a sample login test for the Orange HRM Website
    Open Browser          ${URL}    Safari
    Set Browser Implicit Wait    5
    Maximize Browser Window
    LoginKeyword
    Click Element         id:welcome 
    Click Element         link:Logout 
    Close Browser
    Log                   Test Completed Successfully