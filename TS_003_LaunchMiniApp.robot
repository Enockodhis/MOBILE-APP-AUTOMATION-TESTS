*** Settings ***
Metadata    Author    Enock Odhiambo Omondi
Metadata    Version    1.0.0
Documentation  M-Pesa App Tests
Library  AppiumLibrary
Resource   ../Resources/Keywords.robot

*** Test Cases ***
TC001 Login M-pesa App using Invalid Pin
    [Documentation]     Negative Test scenario where user enters an Invalid PIN during login.
    [Tags]    Regression Tests
    SignIN M-pesa App
    Given User want to sign-in to M-pesa app and the user clicks on mpesa app icon
    Then the user is prompted to enter login pin
    When the user inputs invalid pin the app should prevent them from logging in
    Then the user should able to see the incorrect pin notification
TC002 Login M-pesa App using Valid Pin
    [Documentation]     Positive Test scenario where user enters a valid PIN during login after failed pin.
    [Tags]    Regression Tests
    SignIN M-pesa App
    When the user enters the correct login pin
    Then the user is now successfully logged in
TC003 Launch M-pesa Mini App
    [Documentation]    A scenario where a user plans to use services in particular mini app.
    [Tags]    Regression Tests
    Given User want to Navigate to Mini app
    When user clicks on the services section
    Then the user should be able to see the word services
    Then the user should be able to see the search button
    When the user clicks on the search button
    Then the user should be able to see the search services section
    When the user enters the mini-app name on the services section
    Then the user should be able to see the MINI-APP searched
    When the user clicks on the MINI-APP searched
    #Then the user should be able to navigate to the mini-app home page section     
    