*** Settings ***
Library         RequestsLibrary

*** Test Cases ***

Create Token
    [Tags]  API
    Create Session    session    https://restful-booker.herokuapp.com
    ${response}=  POST On Session  session  auth  data={"username" : "admin","password" : "password123"}  expected_status=200
    Should Be Equal As Strings    ${response.status_code}    200