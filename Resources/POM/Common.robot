*** Settings ***
Library         SeleniumLibrary     timeout=0:00:10

*** Variables ***
${BROWSER}          chrome

*** Keywords ***
Begin Web Test
    Open Browser        http://localhost:4444/wb/hub  browser=${BROWSER}
    Go To               about:blank
End Web Test
    close all browsers