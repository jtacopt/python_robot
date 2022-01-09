*** Settings ***
Documentation    Nome de documento
Library    SeleniumLibrary
Resource    ../resources/POM/LandingPage.robot

*** Variables ***
${LOGIN URL}      https://www.amazon.es/
${BROWSER}        edge

*** Test Cases ***
Open Amazon WebSite
    [Tags]    Smoke
    LandingPage.Open Browser To Login Page

