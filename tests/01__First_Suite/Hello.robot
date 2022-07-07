*** Settings ***
Library     SeleniumLibrary
Suite Teardown     Close All Browsers


*** Test Cases ***
Verify Browser Opens
    [Tags]    T1    Smoke
    Log     Hello World from the very first Suite!!!!
    Open Website    url=https://www.google.com
    Sleep    5s


# rebot --name Greetings --report Greetings.html --log Greetings_logs.html --output Results_dir/greetings.xml Results_dir/hello.xml Results_dir/hi.xml


*** Keywords ***
Open Website
    [Arguments]    ${url}
    Open Browser   ${url}   headlesschrome

Open Firefox
    [Arguments]     ${URL}
    Open Browser    ${URL}