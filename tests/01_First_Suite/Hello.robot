*** Settings ***
Library     SeleniumLibrary
Library     ../../libs/Helpers.py


*** Variables ***
${TEXT}=    Text to split into tokens

*** Test Cases ***
Debug Code Using Different LogLevels
    [Documentation]     Example TC to show differences in HTML report using different log levels.
    ...                 Use these 3 different commands to see the differences:
    ...                 1) robot --name HelloSuite tests/01_First_Suite/Hello.robot
    ...                 2) robot --name HelloSuite --loglevel DEBUG tests/01_First_Suite/Hello.robot
    ...                 3) robot --name HelloSuite --loglevel TRACE tests/01_First_Suite/Hello.robot
    Log     Hello World!!
    ${sentences}=     Text To Sentences    text=${TEXT}


# rebot --name Greetings --report Greetings.html --log Greetings_logs.html --output Results_dir/greetings.xml Results_dir/hello.xml Results_dir/hi.xml


*** Keywords ***
Open Firefox
    [Arguments]     ${URL}
    Open Browser    ${URL}