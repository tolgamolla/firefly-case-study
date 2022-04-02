*** Settings ***
Library           DebugLibrary
Resource          ../../../pages/web/home_page.robot
Resource          ../../../pages/web/search_results_page.robot
Resource          ../../../pages/web/product_detail_page.robot
Resource          ../../../pages/web/basket_page.robot
Resource          ../../../resources/keyword.resource
Test Setup        Open Browser  ${BASE_URL}  chromium
Test Teardown     Close Browser

*** Variables ***
${search_text}       Bluetooth Kulaklık
${brand_text}        jbl

*** Keywords ***

*** Test Cases ***
Scenario: Add To Basket Product
  When Input SearchText    ${search_text}
  And Search Results Page Opened
  And Apply Filter         ${brand_text}
  And Click Product
  When Product Page Opened
  And Add To Basket
  And Go To Basket
  Then Basket Page Opened