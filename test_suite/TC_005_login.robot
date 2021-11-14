*** Settings ***
Resource  ../resources/common_data.robot
Resource  ../resources/data.robot

*** Test Cases ***
Should open app login and verify
    Open Bikroy
    Login
    sleep  ${SLEEP_1}
    text should be visible  ${username}