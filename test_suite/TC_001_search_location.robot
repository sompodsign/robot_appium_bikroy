*** Settings ***
Resource  ../resources/common_data.robot

*** Test Cases ***
Should tap location and search a location to select and check result
    Open Bikroy
    Click Location
    Click Search Box
    Send Data To Location Box And Verify Result
    close application