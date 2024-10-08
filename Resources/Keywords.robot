*** Settings ***
Documentation  M-Pesa App Tests
Library  AppiumLibrary
Variables  ./PageObject/Locators/Locators.py
Variables    ./PageObject/TestData/Testdata.py
*** Variables ***

${TIMEOUT}    30s
${TIMEOUT2}    120s
${SCREENSHOT_DIR}    ../Screenshots/

*** Keywords ***
#Open Application
SignIN M-pesa App
    Open Application    http://localhost:4723
    ...    platformName=Android     
    ...    deviceName=2850bf41    
    ...    appPackage=com.safaricom.mpesa.lifestyle    
    ...    appActivity=com.mpesa.splash.SplashActivity
    ...    automationName=UiAutomator2
    ...    autoGrantPermissions=true
    ...    noReset=true
    ...    captureScreenshots=true
    Capture Page Screenshot    ${SCREENSHOT_DIR}SignInPage.png

#TS_001_PinLogin
Given User want to sign-in to M-pesa app and the user clicks on mpesa app icon
    Wait Until Page Contains Element    ${SIGN_IN_BUTTON}
    Capture Page Screenshot    ${SCREENSHOT_DIR}SignInButtonVisible.png
Then the user is prompted to enter login pin
    Input PIN     ${INVALID_PIN}
     Capture Page Screenshot    ${SCREENSHOT_DIR}InvalidPINEntered.png 
When the user inputs invalid pin the app should prevent them from logging in
    Wait Until Page Contains Element    ${SIGN_IN_BUTTON}    ${TIMEOUT}
    Capture Page Screenshot    ${SCREENSHOT_DIR}InvalidPINPrevented.png   
Then the user should able to see the incorrect pin notification 
    Wait Until Element Is Visible    ${PIN_RADIO_BUTTON_1}
    Capture Page Screenshot    ${SCREENSHOT_DIR}IncorrectPINNotification.png
When the user enters the correct login pin
    Sleep    7s
    Input PIN     ${PIN}
    Capture Page Screenshot    ${SCREENSHOT_DIR}CorrectPINEntered.png
Then the user is now successfully logged in
    Wait Until Page Contains Element    ${HOME_PAGE_SECTION}    ${TIMEOUT}
    Capture Page Screenshot    ${SCREENSHOT_DIR}HomePageAfterLogin.png
Input PIN
    [Arguments]    ${PIN}
    # Click the radio button to activate PIN input
    Wait Until Page Contains Element    ${PIN_RADIO_BUTTON_1}   
    Click Element    ${PIN_RADIO_BUTTON_1}
    Click Element    ${KEY_${PIN[0]}}
    Sleep    0.5s
    Wait Until Page Contains Element    ${PIN_RADIO_BUTTON_2}
    Click Element    ${PIN_RADIO_BUTTON_2}
    Click Element    ${KEY_${PIN[1]}}
    Sleep    0.5s
    Wait Until Page Contains Element    ${PIN_RADIO_BUTTON_3}
    Click Element    ${PIN_RADIO_BUTTON_3}
    Click Element    ${KEY_${PIN[2]}}
    Sleep    0.5s
    Wait Until Page Contains Element    ${PIN_RADIO_BUTTON_4}
    Click Element    ${PIN_RADIO_BUTTON_4}
    Click Element    ${KEY_${PIN[3]}}
    Sleep    0.5s
    Capture Page Screenshot    ${SCREENSHOT_DIR}PINInputComplete.png  

*** Keywords ***
#TS_002_NavigateToMiniapp
Given User want to Navigate to Mini app
    Wait Until Page Contains Element    ${SERVICES_SECTION}
    Capture Page Screenshot    ${SCREENSHOT_DIR}ServicesSectionVisible.png
When user clicks on the services section
    Click Element    ${SERVICES_SECTION}
Then the user should be able to see the word services
    Wait Until Page Contains Element    ${SERVICES_WORD}
    Capture Page Screenshot    ${SCREENSHOT_DIR}ServicesWordVisible.png
Then the user should be able to see the search button
    Wait Until Page Contains Element    ${SEARCH_BUTTON}
    Capture Page Screenshot    ${SCREENSHOT_DIR}SearchButtonVisible.png
When the user clicks on the search button
    Click Element     ${SEARCH_BUTTON}
Then the user should be able to see the search services section
    Wait Until Page Contains Element    ${SEARCH_SERVICES_SECTION}
    Capture Page Screenshot    ${SCREENSHOT_DIR}SearchServicesSectionVisible.png
When the user enters the mini-app name on the services section
    Input Text    ${SEARCH_SERVICES_SECTION}    ${MINIAPP_NAME}
    Capture Page Screenshot    ${SCREENSHOT_DIR}MiniAppSearchEntered.png
Then the user should be able to see the MINI-APP searched
    Wait Until Page Contains Element    ${MINI_APP}    ${TIMEOUT}
    Capture Page Screenshot    ${SCREENSHOT_DIR}MiniAppSearchResults.png
When the user clicks on the MINI-APP searched
    Click Element    ${MINI_APP}
    Capture Page Screenshot    ${SCREENSHOT_DIR}MiniAppOpened.png
#Then the user should be able to navigate to the mini-app home page section
    #Wait Until Page Contains    ${NAVIGATE_MINI_APP_HOME_PAGE}    ${TIMEOUT}      
    
