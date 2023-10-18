*** Settings ***
Documentation   Imports
Library         SeleniumLibrary     timeout=0:00:10
Resource        ../Resources/POM/ShadowDOM.robot
Resource        ../Resources/POM/AJAXData.robot
Resource        ../Resources/POM/VerifyText.robot
Resource        ../Resources/POM/Common.robot
Test Setup      Begin Web Test
Test Teardown   End Web Test
*** Test Cases ***

Shadow DOM
    [Documentation]       Verificar Shadow Dom interections
    Open Page
    Generate UID
    Read UID

AJAX Data Test
    [Documentation]       Verify AJAX Requests
    Open Ajax Data Page
    Trigger AJAX Request

Verify Text Test
    Open Verify Text Page
    Welcome Text Should be  Welcome UserName!


