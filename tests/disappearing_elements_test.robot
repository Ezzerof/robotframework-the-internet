*** Settings ***
Documentation    Test for the disappearing and reappearing elements on each page load.
Library    SeleniumLibrary
Resource    ../resources/keywords.resource
Resource    ../resources/variables.resource

*** Keywords ***
Verify List Elements Disappear on Refresh
    [Arguments]    ${url}    ${list_xpath}    ${expected_disappearance}
    Open Browser    ${url}    ${BROWSER}
    Click Link        Disappearing Elements
    Wait Until Element Is Visible    ${list_xpath}    10
    ${initial_count}    Get Element Count    ${list_xpath}
    Reload Page
    Wait Until Element Is Visible    ${list_xpath}
    ${final_count}    Get Element Count    ${list_xpath}
    Should Be True    ${initial_count} >= ${expected_disappearance}
    Log To Console    Number of elements disappeared: ${initial_count} - ${final_count}
    [Teardown]    Close Browser

*** Test Cases ***
Verify LI Disappearance After Refresh
    Verify List Elements Disappear On Refresh    ${BASE_URL}    //*[@id="content"]/div/ul    1
    