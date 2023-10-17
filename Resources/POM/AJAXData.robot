*** Settings ***
Library         SeleniumLibrary     timeout=0:00:10

*** Variables ***
${AJAX_BUTTON}       id:ajaxButton
${LIST_AJAX_REQUESTS}   css:#content .bg-success

*** Keywords ***
Open Ajax Data Page
    Go To          http://www.uitestingplayground.com/ajax

Trigger AJAX Request
    Click Element   ${AJAX_BUTTON}
    Wait Until Page Contains Element    ${LIST_AJAX_REQUESTS}       20s
