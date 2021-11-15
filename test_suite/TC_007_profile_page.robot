*** Settings ***
Resource  ../resources/common_data.robot
Resource  ../resources/data.robot

*** Test Cases ***
Should login app and profile page
    Open Bikroy
    Close Intro
    Login
    Click Profile Avatar
