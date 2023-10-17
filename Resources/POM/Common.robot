*** Settings ***
Library         SeleniumLibrary     timeout=0:00:10

*** Variables ***
${BROWSER}          chrome

*** Keywords ***
Begin Web Test
    Open Browser          about:blank    ${BROWSER}

End Web Test
    close all browsers