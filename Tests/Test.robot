*** Settings ***
Library  Selenium2Library

*** Variables ***
${Facebook}  http://www.facebook.com
${Browser}  chrome

*** Test Cases ***
Sould be ope Facebook
    [Documentation]  this is practice
    [Tags]  facebook
    Open Browser  ${Facebook}   ${Browser}
    Select From List By Label  month  May
    Input Text  email  Salman
    Open Browser  http://www.google.com  ${browser}
    Input Text  lst-ib  salman
    Maximize Browser Window
    Switch Browser  1
    Input Text  pass  Salman

    Open Browser  http://www.yahoo.com  ${browser}
    Switch Browser  2
    Maximize Browser Window
    sleep  10s
    Wait Until Element Is Visible  btnK
    Click Element  btnK
    Switch Browser  3
    Maximize Browser Window
    sleep  5s
    minimize_browser  3

   # Close All Browsers





*** Keywords ***
