*** Settings ***
Resource  ../resources/common_data.robot
Resource  ../resources/data.robot

*** Test Cases ***
Should login app and go to more screen
    Open Bikroy
    Close Intro
    Switch Language To English
    Login
    Click Logout
    text should be visible  ${LOGOUT_VERIFY_DATA}