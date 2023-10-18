*** Settings ***
Library         SeleniumLibrary     timeout=0:00:10

*** Variables ***
${VERIFY_TEXT_TEXT}       css=.bg-primary .badge-secondary

*** Keywords ***
Open Verify Text Page
    Go To  http://www.uitestingplayground.com/verifytext
    Title Should Be     Verify Text

Read Welcome Text
    ${text}  Get Text  ${VERIFY_TEXT_TEXT}
    [Return]  ${text}

Welcome Text Should be
    [Arguments]     ${expected_welcome_text}
    ${actual_welcome_text}  Read Welcome Text
    Element Text Should Be  ${VERIFY_TEXT_TEXT}  ${expected_welcome_text}  but it's ${actual_welcome_text}  true
