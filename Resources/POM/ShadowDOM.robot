*** Settings ***
Library         SeleniumLibrary     timeout=0:00:10

*** Variables ***
${GUID_INPUT}       dom=document.querySelector('guid-generator').shadowRoot.querySelector('#editField')
${GUID_GENERATE}    dom=document.querySelector('guid-generator').shadowRoot.querySelector('#buttonGenerate')
${GUID_COPY}        dom=document.querySelector('guid-generator').shadowRoot.querySelector('#buttonCopy')

*** Keywords ***
Open Page
    Go To  http://www.uitestingplayground.com/shadowdom

Generate UID
    Click Element   ${GUID_GENERATE}

Read UID
    ${Text}  Get Text   ${GUID_GENERATE}
    log  "Text: "${Text}

