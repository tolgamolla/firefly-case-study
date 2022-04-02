*** Settings ***
Resource          ../../../pages/web/home_pages.robot
Resource          ../../../resources/keyword.resource
Test Setup        Open Browser  ${BASE_URL}  chromium
Test Teardown     Close Browser

*** Variables ***
${search_text}       Bluetooth Kulaklık

*** Keywords ***

*** Test Cases ***
Scenario: Add To Basket Product
  GIVEN Home Page Opened
  WHEN Input SearchText    ${search_text}
  THEN Search Results Page Opened