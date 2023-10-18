*** Settings ***
Library         ../Libraries/ParseGetBookingResponse.py
Library         RequestsLibrary

*** Test Cases ***
Exemplo de Chamada de API
    [Tags]  API
    ${reponse}=    GET  https://restful-booker.herokuapp.com/booking
    Should Be Equal As Strings    ${reponse.status_code}    200
    ${response_json}=    Set Variable  ${reponse.json()}
    Log    GetBookingIdsJson:${response_json}
    ${bookingid}=    Set Variable  ${response_json[0]}
    Log    bookingid:${bookingid}
    ${bookingidValue}=    Set Variable  ${bookingid['bookingid']}
    Log    bookingid_value:${bookingidValue}
    ${booking_reponse}=  GET  https://restful-booker.herokuapp.com/booking/${bookingidValue}
    ${booking_json}=     Set Variable    ${booking_reponse.json()}
    ${book_first_name}=   Get First Name   ${booking_json}
    Log    Fist Name: ${book_first_name}
    ${book_last_name}=    Get Last Name   ${booking_json}
    Log    Last Name: ${book_last_name}

