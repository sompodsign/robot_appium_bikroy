*** Settings ***
Resource  ../resources/common_data.robot

*** Test Cases ***
Should tap on category type a category name and check result
    Open Bikroy
    Click Category
    Click Category Search Box
    Send Data To Category Search Box And Verify Result
    close application