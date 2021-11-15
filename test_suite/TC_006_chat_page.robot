*** Settings ***
Resource  ../resources/common_data.robot
Resource  ../resources/data.robot

*** Test Cases ***
Should open app login and verify
    Open Bikroy


    Close Intro If On Screen
    Login
    Click Chat
