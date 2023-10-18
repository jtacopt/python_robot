*** Settings ***
Library         SeleniumLibrary     timeout=0:00:10

*** Variables ***
${BROWSER}          chrome
${GRID_URL}         None

*** Keywords ***
Begin Web Test
    Open Browser        ${GRID_URL}  browser=${BROWSER}
    Go To               about:blank
End Web Test
    close all browsers