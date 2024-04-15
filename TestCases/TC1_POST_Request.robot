*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}=    http://127.0.0.1:5000

*** Test Cases ***
Test POST Request
    Create Session  session     ${BASE_URL}
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${payload}=    Create Dictionary    name=sandeep    email=sandeep@gmail.com
    ${response}=   POST On Session    session  ${BASE_URL}/submit-json    json=${payload}    headers=${headers}

    Log to console    ${response.status_code}
    Log to console    ${response.content}

    #Validation
    Should be equal as numbers    ${response.status_code}   200