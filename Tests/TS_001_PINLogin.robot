*** Settings ***
Metadata    Author    Enock Odhiambo Omondi
Metadata    Version    1.0.0
Documentation  M-Pesa App Tests
Library  AppiumLibrary
Resource   ../Resources/Keywords.robot

*** Test Cases ***
PinLogin
    SignIN M-pesa App
    Given User want to sign-in to M-pesa app and the user clicks on mpesa app icon
    Then the user is prompted to enter login pin
    When the user inputs invalid pin the app should prevent them from logging in
    Then the user should able to see the incorrect pin notification 
    When the user enters the correct login pin
    Then the user is now successfully logged in
    
