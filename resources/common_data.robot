*** Settings ***
Documentation  Bikroy App Automation using AppiumLibrary.
Library        AppiumLibrary
Library        BuiltIn
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
  ...  noReset=false

Click
    [Arguments]  ${locator}
    sleep  ${SLEEP_1}
    click element  ${locator}

Click Profile Avatar
    Click  ${PROFILE_ICON}

Click Signin Email Button
    Click  ${SIGNIN_EMAIL_BTN}

Send Data To Email Field
    [Arguments]  ${data}
    Send Data  ${EMAIL_FIELD}  ${data}

Send Data To Password Field
    [Arguments]  ${data}
    Send Data  ${PASSWORD_FIELD}  ${data}

Click Login Button
    Click  ${LOGIN_BUTTON}

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

Click Chat
    Click  ${CHAT_ICON}

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
    Send Data                  ${LOCATION_SEARCH_BOX}  ${LOCATION_SEARCH_TEXT}
    element should be visible  ${LOCATION_SEARCH_RESULT}

Send Data To Category Search Box And Verify Result
    Send Data                  ${CATEGORY_SEARCH_BOX}  ${CATEGORY_SEARCH_TEXT}
    element should be visible  ${CATEGORY_SEARCH_RESULT}

Filter Result Verify
    sleep                      ${SLEEP_1}
    element should be visible  ${HOME_RESULT}

Login
    Click Profile Avatar
    Click Signin Email Button
    Send Data To Email Field     ${valid_email}
    Send Data To Password Field  ${valid_password}
    Click Login Button
    wait until page contains     ${POST_AD}  20

Click Gear Icon
    Click  ${GEAR_ICON}

Select English
    Click  ${ENGLISH}

Close Intro
    sleep  1s
    Click  ${INTRO_CLOSE_BUTTON}

Click My Ads
    Click  ${MY_ADS}

Click My Membership
    Click  ${MY_MEMBERSHIP}

Click Favorites
    Click  ${FAVORITES}

Click My Profile
    Click  ${MY_PROFILE}

Click Stay Safe
    Click  ${STAY_SAFE}

Click FAQ
    Click  ${FAQ}

Click How To Sell Fast
    Click  ${HOW_TO_SELL_FAST}

Click More
    Click  ${MORE}

Click Logout
    Click  ${LOGOUT}

Click Post Ad
    Click  ${POST_AD}

Click Cars Category
    Click  ${CARS_CATEGORY}

Click MotorBikes
    Click  ${MOTORBIKES}

Click Mobile Phones
    Click  ${MOBILE_PHONES}

Click Property
    Click  ${Property}

Click Overseas Jobs
    Click  ${OVERSEAS_JOBS}

Click Jobs
    Click  ${JOBS}

Close Intro If On Screen
    sleep  5s
    ${intro_element} =  get webelement  ${intro_element}
    run keyword if  ${intro_element} = 1  Close Intro

Switch Language To English
    Click  ${PROFILE_ICON}
    Click Gear Icon
    Select English
    go back

Close Application
    sleep  2s
    close application