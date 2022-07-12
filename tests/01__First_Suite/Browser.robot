*** Settings ***
Library     SeleniumLibrary
Suite Teardown     Close All Browsers


*** Test Cases ***
Verify Browser Opens
    [Tags]    T1    Smoke
    Log     Opening a browser page...
    Open Website    url=https://www.google.com
    Sleep    5s


*** Keywords ***
Open Website
    [Arguments]    ${url}
    Open Browser   ${url}   headlesschrome

Open Firefox
    [Arguments]     ${URL}
    Open Browser    ${URL}