*** Settings ***
Library           RequestsLibrary
Resource          ../../../resources/gorest_resource.robot

*** Variables ***
${path}                             /users
${RESPONSE_TOTAL}                   [meta][pagination][total]
${RESPONSE_PAGES}                   [meta][pagination][pages]
${RESPONSE_PAGE}                    [meta][pagination][page]
${RESPONSE_LIMIT}                   [meta][pagination][limit]

*** Keywords ***
Response Value Check
    Should Not Be Empty             ${response.json()}${RESPONSE_TOTAL}
    Should Not Be Empty             ${response.json()}${RESPONSE_PAGES}
    Should Not Be Empty             ${response.json()}${RESPONSE_PAGE}
    Should Not Be Empty             ${response.json()}${RESPONSE_LIMIT}

*** Test Cases ***
Scenario: Gorest Get Users Api Test
    Given Get Request               ${path}
    When Status Code "200" Check
    Then Response Value Check