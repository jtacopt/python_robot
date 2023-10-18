*** Settings ***
Library         ../../Libraries/CustomLibrary.py
Library         SeleniumLibrary     timeout=0:00:10

*** Variables ***
${CLICK_ME_LINK}       css=[title]

*** Keywords ***
Open Mouse Over Page
    Go To  http://www.uitestingplayground.com/mouseover
    Title Should Be     Mouse Over

Click N Times in Link
    [Arguments]  ${n_times}
    FOR    ${counter}    IN RANGE    ${n_times}
        Click Element  ${CLICK_ME_LINK}
        Log    ${counter}
    END
    Sleep    3s
    Cenas
