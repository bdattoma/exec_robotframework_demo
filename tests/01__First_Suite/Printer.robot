*** Variables ***
${USERNAME}=   m.scott
${USER_ROLE}=   Regional Manager


*** Test Cases ***
Check Logs Print "Hi"
    [Tags]    T10    Smoke
    Log     Hi World from the very first Suite!!

Check Logs Print "Hello"
    [Tags]    T11    Tier2
    Log     Hello World, again, from the very first Suite!!

Check Logs Print Username And Role
    [Tags]    T40    Smoke
    Log     Welcome user ${USERNAME}
    Log     The user-role is ${USER_ROLE}
