*** Settings ***
Resource  ../resources/common_data.robot
Resource  ../resources/data.robot

*** Test Cases ***
Should open app login and goto chat screen
    Open Bikroy
    Close Intro
    Click Chat
