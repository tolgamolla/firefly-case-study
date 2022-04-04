*** Variables ***
${BASE_URL}                         https://gorest.co.in/public/v1

*** Keywords ***
Get Request
    [Arguments]                     ${path}
    ${response}=                    GET                     ${BASE_URL}${path}
    Should Not Be Empty             ${response.json()}
    Set Global Variable             ${response}

Status Code "${code}" Check
    Should Be Equal As Strings      ${response.reason}      OK
    Status Should Be                ${code}                 ${response}