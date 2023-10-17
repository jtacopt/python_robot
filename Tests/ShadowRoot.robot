*** Settings ***
Documentation   Imports
Library         SeleniumLibrary     timeout=0:00:10

*** Variables ***
${BROWSER} =    chrome

*** Test Cases ***
Devera encontrar casas
    [Documentation]       Verificar cenas
    open browser          http://www.uitestingplayground.com/shadowdom    ${BROWSER}
    Click Element         dom=document.querySelector('guid-generator').shadowRoot.querySelector('#buttonGenerate')
    sleep                 3s
    Clear Element Text    dom=document.querySelector('guid-generator').shadowRoot.querySelector('#editField')
    Click Element         dom=document.querySelector('guid-generator').shadowRoot.querySelector('#buttonCopy')
    Press keys            dom=document.querySelector('guid-generator').shadowRoot.querySelector('#editField')    CTRL+v
    sleep                 30s
    close all browsers

*** Keywords ***
