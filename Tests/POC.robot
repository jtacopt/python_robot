*** Settings ***
Documentation   Imports
Library         SeleniumLibrary     timeout=0:00:10

*** Variables ***
${BROWSER} =    edge

*** Test Cases ***
Devera encontrar casas
    [Documentation]     Verificar cenas
    open browser        https://www.idealista.pt/    ${BROWSER}
    log                 Starting Test Case
    sleep               10s
    close all browsers

*** Keywords ***
