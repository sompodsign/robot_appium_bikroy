*** Settings ***
Resource  ../resources/common_data.robot
Resource  ../resources/data.robot

*** Test Cases ***
Should login app and go to how to sell fast screen
    Open Bikroy
    Close Intro
    Switch Language To English
    Login
    Click How To Sell Fast
