*** Settings ***
Resource  ../resources/common_data.robot
Resource  ../resources/data.robot

*** Test Cases ***
Should click post add and goto motor bikes category
    Open Bikroy
    Close Intro
    Switch Language To English
    Login
    Click Post Ad
    Click MotorBikes