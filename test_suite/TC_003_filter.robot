*** Settings ***
Resource  ../resources/common_data.robot

*** Test Cases ***
Sort result and verify
    Open Bikroy
    Click Filter
    Check Urgent
    Click Apply Filters
    Filter Result Verify