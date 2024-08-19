*** Settings ***
Library    AppiumLibrary


*** Variables ***
#  used the signin button on M-pesa app to assist in launching the app
${SIGN_IN_BUTTON}     id=com.safaricom.mpesa.lifestyle:id/pinLayoutContainer

*** Test Cases ***
Open_Application
    Open Application    http://localhost:4723
    ...    platformName=Android     
    ...    deviceName=2850bf41    
    ...    appPackage=com.safaricom.mpesa.lifestyle    
    ...    appActivity=com.mpesa.splash.SplashActivity
    ...    automationName=UiAutomator2
    ...    autoGrantPermissions=true
    ...    noReset=true
    ...    captureScreenshots=true

    Wait Until Page Contains Element    ${SIGN_IN_BUTTON}
