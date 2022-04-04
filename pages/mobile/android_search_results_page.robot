*** Settings ***
Library           AppiumLibrary
Resource          ../../resources/mobile_resource.robot

*** Variables ***
${FILTERING_BUTTON_SUGGESTION}        com.pozitron.hepsiburada:id/tv_product_list_options_bar_filter
${BRAND_FILTER}                       //android.widget.LinearLayout[@content-desc="Marka"]
${SEARCH_TEXT_FILTER}                 com.pozitron.hepsiburada:id/search_src_text
${BRAND_JBL}                          com.pozitron.hepsiburada:id/tvMultiSelection
${APPLY_BUTTON}                       com.pozitron.hepsiburada:id/btn_filters_apply
${PRICE_FILTER}                       //android.widget.LinearLayout[@content-desc="Fiyat Aralığı"]
${PRICE_FILTER_VALUE}                 //android.widget.LinearLayout[@content-desc="500 TL 750 TL aralığı"]/android.widget.LinearLayout
${COLOR_FILTER}                       //android.widget.LinearLayout[@content-desc="Renk"]
${COLOR_BLACK}                        //android.widget.LinearLayout[@content-desc="Siyah"]/android.widget.LinearLayout/android.widget.TextView
${SHOW_PRODUCTS_BUTTON}               com.pozitron.hepsiburada:id/btn_filters_main_close
${FIRST_PRODUCT}                      com.pozitron.hepsiburada:id/ll_product_list_item_info_container

*** Keywords ***
Search Results Page Opened
    Wait Until Element Is Visible   ${FILTERING_BUTTON_SUGGESTION}
    Element Should Be Visible       ${FILTERING_BUTTON_SUGGESTION}

Apply Brand Filter
    [Arguments]                     ${brand_text}
    Element Text Should Be          ${FILTERING_BUTTON_SUGGESTION}      Filtrele
    Click Element                   ${FILTERING_BUTTON_SUGGESTION}
    Wait Until Element Is Visible   ${BRAND_FILTER}
    Click Element                   ${BRAND_FILTER}
    Wait Until Element Is Visible   ${SEARCH_TEXT_FILTER}
    Input Text                      ${SEARCH_TEXT_FILTER}               ${brand_text}
    Wait Until Element Is Visible   ${BRAND_JBL}
    Click Element                   ${BRAND_JBL}
    Click Element                   ${APPLY_BUTTON}

Apply Price Filter
    Wait Until Element Is Visible   ${PRICE_FILTER}
    Click Element                   ${PRICE_FILTER}
    Wait Until Element Is Visible   ${PRICE_FILTER_VALUE}
    Click Element                   ${PRICE_FILTER_VALUE}
    Click Element                   ${APPLY_BUTTON}

Apply Color Filter
    Sleep                           1
    Swipe Down                      ${PRICE_FILTER}
    Wait Until Element Is Visible   ${COLOR_FILTER}
    Click Element                   ${COLOR_FILTER}
    Wait Until Element Is Visible   ${COLOR_BLACK}
    Click Element                   ${COLOR_BLACK}
    Click Element                   ${APPLY_BUTTON}

Show To Products
    Wait Until Element Is Visible   ${SHOW_PRODUCTS_BUTTON}
    Element Should Be Visible       ${SHOW_PRODUCTS_BUTTON}
    Element Should Contain Text     ${SHOW_PRODUCTS_BUTTON}             Ürünleri Gör
    Click Element                   ${SHOW_PRODUCTS_BUTTON}

Go To Product Detail
    Wait Until Element Is Visible   ${FIRST_PRODUCT}
    Click Element                   ${FIRST_PRODUCT}