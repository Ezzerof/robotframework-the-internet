*** Settings ***
Documentation    Test for the Add Element functionality
Library    SeleniumLibrary
Resource    ../resources/keywords.resource
Resource    ../resources/variables.resource

*** Test Cases ***
Navigate and Verify Add Element
    Navigate To Add Remove Elements Page
    Click Add Elements Button
    Verify Delete Button Presence
    [Teardown]    Close Browser


Click Add Element Button Four Times
    Navigate To Add Remove Elements Page
    FOR    ${index}    IN RANGE    4
        Click Add Elements Button
    END
    ${DELETE_COUNT}    Get Element Count    xpath=//button[text()='Delete']
    Should Be Equal As Integers    ${DELETE_COUNT}    4
    [Teardown]    Close Browser