*** Settings ***
Library         ../../Libraries/CustomLibrary.py
Library         SeleniumLibrary     timeout=0:00:10
*** Variables ***
${BROWSER}          chrome
${GRID_URL}         None

*** Keywords ***
Begin Web Test
    Open Browser  about:blank   ${BROWSER}

End Web Test
    close all browsers