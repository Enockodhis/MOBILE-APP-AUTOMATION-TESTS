*** Settings ***
Metadata    Author    Enock Odhiambo Omondi
Metadata    Version    1.0.0
Documentation  M-Pesa App Tests
Library  AppiumLibrary
Resource   ../Resources/Keywords.robot

*** Test Cases ***
Navigate to Mini App
    [Documentation]      A user accessing services within the Mini Apps on the M-Pesa Super App platform.
    [Tags]    Regression Tests
    SignIN M-pesa App
    Given User want to sign-in to M-pesa app and the user clicks on mpesa app icon
    Then the user is prompted to enter login pin
    When the user inputs invalid pin the app should prevent them from logging in
    Then the user should able to see the incorrect pin notification 
    When the user enters the correct login pin
    Then the user is now successfully logged in
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