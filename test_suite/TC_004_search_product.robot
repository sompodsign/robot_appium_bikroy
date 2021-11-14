*** Settings ***
Resource  ../resources/common_data.robot

*** Test Cases ***
Should open app search product and check
    Open Bikroy
    Click Search Icon
    Click Product Search Box
    Click Edit Search Box
    Send Data Product Search Field
    Send Search Key Event