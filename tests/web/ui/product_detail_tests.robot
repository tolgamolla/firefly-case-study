*** Settings ***
Library           DebugLibrary
Resource          ../../../pages/web/home_page.robot
Resource          ../../../pages/web/search_results_page.robot
Resource          ../../../pages/web/product_detail_page.robot
Resource          ../../../pages/web/basket_page.robot
Resource          ../../../resources/web_resource.robot
Test Setup        Open Browser  ${BASE_URL}  chromium
Test Teardown     Close Browser

*** Variables ***
${search_text}       Bluetooth Kulaklık
${brand_text}        jbl

*** Test Cases ***
Scenario: Add To Basket Product
  Given Home Page Opened
  When Search With Text                 ${search_text}
  Given Search Results Page Opened
  When Apply Filter                     ${brand_text}
  And Click Product
  Given Product Page Opened
  When Add To Basket
  And Go To Basket
  Then Basket Page Opened