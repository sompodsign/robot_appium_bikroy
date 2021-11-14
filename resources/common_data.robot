*** Settings ***
Documentation  Bikroy App Automation using AppiumLibrary.
Library        AppiumLibrary
Resource       ./locators.robot
Resource       ./data.robot

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/apk/bikroy-1-2-15.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=11}

*** Keywords ***
Open Bikroy
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}
  ...  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}
  ...  noReset=true

Click
    [Arguments]  ${locator}
    sleep  ${SLEEP_1}
    click element  ${locator}

Click Location
    click text  Location

Click Category
    click text  Category

Click Search Box
    click element  ${LOCATION_SEARCH_BOX}

Click Filter
    click element  ${FILTER_ICON}

Click Sort By
    Click  ${SORT_BY}

Check Urgent
    Click  ${URGENT}

Click Apply Filters
    Click  ${APPLY_FILTERS}

Click Search Icon
    Click  ${SEARCH_ICON}

Click Product Search Box
    Click  ${SEARCH_BOX}

Click Edit Search Box
    Click  ${EDIT_SEARCH_FIELD}

Send Data Product Search Field
    Send Data  ${EDIT_SEARCH_FIELD}  ${CATEGORY_SEARCH_TEXT}

Send Search Key Event
    execute adb shell  input keyevent ${ENTER_KEY_CODE}

Send Enter Key Event
    press keycode  ${ENTER_KEY_CODE}

Select Price Low To High
    sleep  1s
    click text  Price: Lowest to Highest

Click Category Search Box
    click element  ${CATEGORY_SEARCH_BOX}

Send Data
    [Arguments]  ${locator}  ${data}
    sleep  ${SLEEP_1}
    input text  ${locator}  ${data}

Send Data To Location Box And Verify Result
    Send Data  ${LOCATION_SEARCH_BOX}  ${LOCATION_SEARCH_TEXT}
    element should be visible  ${LOCATION_SEARCH_RESULT}

Send Data To Category Search Box And Verify Result
    Send Data  ${CATEGORY_SEARCH_BOX}  ${CATEGORY_SEARCH_TEXT}
    element should be visible  ${CATEGORY_SEARCH_RESULT}

Filter Result Verify
    sleep  ${SLEEP_1}
    element should be visible  ${HOME_RESULT}






