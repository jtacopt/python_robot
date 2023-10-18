*** Settings ***
Documentation   Imports
Resource        ../Resources/POM/TextInput.robot
Resource        ../Resources/POM/Common.robot

Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***

Text Input
    Open Text Input Page
    Set New Button Name    Name
    Validate Button Name   Name
