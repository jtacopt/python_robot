*** Settings ***
Documentation    Nome de documento
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.amazon.es/
${BROWSER}        edge

*** Test Cases ***
keyword should exist
    [Tags]    Smoke
    Open Browser To Login Page

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}