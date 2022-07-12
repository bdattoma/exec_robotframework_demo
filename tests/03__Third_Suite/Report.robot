*** Settings ***
Library     SeleniumLibrary
Library     ../../libs/Helpers.py
Suite Teardown     Close All Browsers


*** Variables ***
${TEXT}=     Text to split into tokens
# ${CITY}=   New York


*** Test Cases ***
Debug Code Using Different LogLevels
    [Documentation]     Example TC to show differences in HTML report using different log levels.
    ...                 Use these 3 different commands to see the differences:
    ...                 1) robot --name HelloSuite tests/03_Third_Suite/Report.robot
    ...                 2) robot --name HelloSuite --loglevel DEBUG tests/03_Third_Suite/Report.robot
    ...                 3) robot --name HelloSuite --loglevel TRACE tests/03_Third_Suite/Report.robot
    [Tags]     Smoke
    ...        KnownIssue
    ...        T50
    Log     This is a failing test case!!
    ${sentences}=     Text To Sentences    text=${TEXT}

Verify City Where User Lives
    [Tags]    KnownIssue
    ...       T51
    ${user_city}=   Get User City
    Should Be Equal   ${user_city}     ${CITY}


*** Keywords ***
Open Firefox
    [Arguments]     ${URL}
    Open Browser    ${URL}

Get User City
    ${user_city}=   Set Variable    New York
    [Return]    ${user_city}