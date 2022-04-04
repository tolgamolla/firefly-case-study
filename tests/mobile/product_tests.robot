*** Settings ***
Library             AppiumLibrary
Resource            ../../resources/mobile_resource.robot
Resource            ../../pages/mobile/android_home_page.robot
Resource            ../../pages/mobile/android_search_results_page.robot
Resource            ../../pages/mobile/android_product_detail_page.robot

Test Setup          Open Test Application
Test Teardown       Close Application

*** Variables ***
${search_text}       bluetooth
${brand_text}        jbl

*** Test Cases ***
Scenario: Add To Basket Product
    Given Home Page Opened
    When Search With Text               ${search_text}
    Given Search Results Page Opened
    When Apply Brand Filter             ${brand_text}
    And Apply Price Filter
    And Apply Color Filter
    And Show To Products
    And Go To Product Detail
    Given Product Detail Page Opened
    When Add To Basket
    Then Go To Basket