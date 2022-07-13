*** Settings ***
Library     SeleniumLibrary
Suite Teardown     Close All Browsers


*** Test Cases ***
Verify Browser Opens
    [Tags]    T1    Smoke
    Log     Opening a browser page...
    Open Website    url=https://www.google.com
    Sleep    3s


*** Keywords ***
Open Website
    [Arguments]    ${url}
    Open Browser   ${url}   chrome

Open Firefox
    [Arguments]     ${URL}
    Open Browser    ${URL}