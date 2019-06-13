*** Settings ***
Library    SeleniumLibrary   
Library    OperatingSystem    
 
    
*** Test Cases ***
First Test Case
    Log    Hello World!          
    
    
First Selenium Test
    Open Browser        https://www.google.com    Safari
    Set Browser Implicit Wait    5
    Input Text      name=q    Automation Step-By-Step
    Press Keys      name=q    ENTER
    #Click Button    name=btnK
    Sleep               2
    Close Browser
    Log    Test Completed
 
# Example of OS Platform Used
    # ${system}=    Evaluate    platform.system()    platform
    # Log To Console    \nI am running on ${system}    
    
# GetEnvironmentVariablesTest
    # [Tags]    system
    # #${ComputerName}=    Get Environment Variable    COMPUTERNAME
    # ${OperatingSystem}=    Get Environment Variable    OS    
    # ${TestUserName}=    Get Environment Variable    USERNAME    
    # ${SystemDir}=    Get Environment Variable    WINDIR    
    # ${ProcessorLevel}=    Get Environment Variable    PROCESSOR_LEVEL    
    # #Log    ${ComputerName}
    # Log    ${OperatingSystem}
    # Log    ${TestUserName}
    # Log    ${SystemDir}
    # Log    ${ProcessorLevel}   
    