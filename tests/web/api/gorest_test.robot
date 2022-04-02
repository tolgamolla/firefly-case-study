*** Settings ***
Documentation     Firefly Api Test
Library           RequestsLibrary
Resource          ../../../resources/gorest_keyword.resource

Test Setup        Set Log Level    TRACE

*** Variables ***
${RESPONSE_TOTAL}         [meta][pagination][total]
${RESPONSE_PAGES}         [meta][pagination][pages]
${RESPONSE_PAGE}          [meta][pagination][page]

*** Test Cases ***
Scenario: Gorest Get Users with Gherkin Style
    Given Get Request "/users"
    When Status Code "200" Check
    Then Response Value Check