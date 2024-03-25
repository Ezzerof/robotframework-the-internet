*** Settings ***
Documentation    Test for the Delete Element feature.
Library    SeleniumLibrary
Resource    ../resources/keywords.resource
Resource    ../resources/variables.resource

*** Test Cases ***
Navigate and Delete Element
    Navigate To Add Remove Elements Page
    Click Add Elements Button
    Verify Delete Button Presence
    Click Delete Button

Delete Four Elements
    Navigate To Add Remove Elements Page
    FOR    ${i}    IN RANGE    4
        Click Add Elements Button
    END
    Verify Delete Button Presence
    FOR    ${i}    IN RANGE    4
        Click Delete Button
    END