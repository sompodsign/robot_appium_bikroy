*** Settings ***
Resource  ../resources/common_data.robot
Resource  ../resources/data.robot

*** Test Cases ***
Should click post add and goto overseas jobs page
    Open Bikroy
    Close Intro
    Switch Language To English
    Login
    Click Post Ad
    Click Overseas Jobs
    sleep  ${SLEEP_1}
    Close All Applications