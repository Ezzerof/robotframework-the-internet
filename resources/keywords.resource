*** Keywords ***
Navigate to Add Remove Elements Page
    [Documentation]    Navigates to the Add/Remove Elements Page.
    Open Browser    ${BASE_URL}    ${BROWSER}
    Click Link    Add/Remove Elements
    Wait Until Element Is Visible   xpath=//button[text()='Add Element']    10


Click Add Elements Button
    Click Button    xpath=//button[text()='Add Element']
    
Verify Delete Button Presence
    Wait Until Element Is Visible    xpath=//button[text()='Delete']    10
    Element Should Be Visible    xpath=//button[text()='Delete']