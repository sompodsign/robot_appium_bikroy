*** Settings ***
Resource  ../resources/common_data.robot
Resource  ../resources/data.robot

*** Test Cases ***
Should login app and go to my profile
    Open Bikroy
    Close Intro
    Switch Language To English
    Login
    Click My Profile
