*** Settings ***
Library  SeleniumLibrary

*** Variables ***




*** Test Cases ***

Check the waits
    [Tags]  regression
    open browser    https://demo.automationtesting.in/Register.html     chrome
    #sleep   5
    #set selenium implicit wait  10
    #wait until element contains     xpath://*[@id="section"]/div/h2   Register
    wait until page contains    Register
    input text      xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input     bheem

Check to swtich to frames
    [Tags]  regression
    open browser    https://demo.automationtesting.in/Frames.html   chrome
    select frame    id:singleframe
    input text      xpath:/html/body/section/div/div/div/input    ram
    unselect frame
    click element  xpath://a[normalize-space()='Iframe with in an Iframe']

Check to swtich to windows
    [Tags]  regression
    open browser    https://demo.automationtesting.in/Windows.html   chrome
    click element  xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    switch window   title=Selenium
    log to console  get window title









*** Keywords ***
