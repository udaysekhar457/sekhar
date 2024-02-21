*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}   https://demo.automationtesting.in/Register.html
${browser}  chrome



*** Test Cases ***
Select a value from the multi dropdown
    [Tags]  smoke
    lauch the application
    click element   id:checkbox1
    click element   id:msdd
    click element   xpath://a[text()='English']
    click element   xpath://a[text()='Spanish']

Select a value from the dropdown
    [Tags]  smoke
    lauch the application
    select from list by index   id:Skills  2
    select from list by label   id:Skills   Python
    select from list by value   id:Skills   Java


Check the waits
    [Tags]  smoke
    lauch the application
    #sleep   5
    #set selenium implicit wait  10
    #wait until element contains     xpath://*[@id="section"]/div/h2   Register
    wait until page contains    Register
    input text      xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input     bheem

*** Keywords ***
lauch the application
    open browser    ${url}     ${browser}
    maximize browser window
