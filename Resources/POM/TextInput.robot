*** Settings ***
Library         SeleniumLibrary     timeout=0:00:10
Library    XML

*** Variables ***
${TEXT_INPUT_BUTTON_NAME_INPUT}       css=#newButtonName
${TEXT_INPUT_BUTTON_NAME_TEXT}       css=#updatingButton

*** Keywords ***
Open Text Input Page
    Go To  http://www.uitestingplayground.com/textinput

Set New Button Name
    [Arguments]  ${BUTTON_NAME}
    Input Text  ${TEXT_INPUT_BUTTON_NAME_INPUT}  ${BUTTON_NAME}
    Click Element    ${TEXT_INPUT_BUTTON_NAME_TEXT}

Validate Button Name
    [Arguments]  ${EXPECTED_BUTTON_NAME}
    Element Text Should Be    ${TEXT_INPUT_BUTTON_NAME_TEXT}    ${EXPECTED_BUTTON_NAME}