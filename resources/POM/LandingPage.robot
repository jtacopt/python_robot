*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.amazon.es/
${BROWSER}        edge

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Sleep    3s
    Close Browser