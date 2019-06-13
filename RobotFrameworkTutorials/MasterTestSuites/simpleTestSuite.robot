*** Settings ***
Library    SeleniumLibrary   
Library    OperatingSystem 

Suite Setup       Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown    
Test Setup        Log    Iam inside Test Set Up    
Test Teardown     Log    I am inside Test Teardown

Default Tags      Sanity

*** Test Cases ***
FirstTest
    [Tags]    smokeTest
    Log    This is the first test
    
SecondTest
    [Tags]    fishTest
    Log    This is the second test
    
ThirdTest
    [Tags]    snakeTest
    Log    This is the third test
    Set Tags    regression1
FourthTest
    Log    This is the fourth test
    
FifthTest
    Log    This is the fifth test
    
SixthTest
    Log    This is the sixth test
 SeventhTest
    Log    This is the seventh test