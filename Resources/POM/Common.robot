*** Settings ***
Library         SeleniumLibrary     timeout=0:00:10

*** Variables ***
${BROWSER}          headlesschrome

*** Keywords ***
Begin Web Test
    Open Browser         http://localhost:4444  about:blank  ${BROWSER}

End Web Test
    close all browsers