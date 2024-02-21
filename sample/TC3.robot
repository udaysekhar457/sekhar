*** Settings ***
Library  SeleniumLibrary

*** Variables ***




*** Test Cases ***
Check the drag and drop
    [Tags]  sanity
    open browser    https://jqueryui.com/droppable/     chrome
    select frame    xpath://*[@id="content"]/iframe
    drag and drop  id:draggable     id:droppable

Check the Mouse events
    [Tags]  sanity
    open browser    https://jqueryui.com/droppable/     chrome
    mouse over  xpath://*[@id="menu-top"]/li[5]/a
    open context menu   xpath://*[@id="menu-top"]/li[5]/a

*** Keywords ***
