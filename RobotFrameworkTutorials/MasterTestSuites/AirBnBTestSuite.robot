*** Setting ***
Library    SeleniumLibrary    
*** Variables ***

*** Test Cases ***
User Can Open HomePage
    [Documentation]    User Can Open The Webpage and See The Tagline
    Open Browser        http://www.airbnb.co.nz    Safari
    Wait Until Page Contains    Book unique places to stay and things to do.
    Close Browser
    Log           Browser has been successfully closed.
    Log           One Problem with Github still persistent good
    Log           This is done now
*** Keywords ***