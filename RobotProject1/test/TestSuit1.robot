*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    i am inside Test Suite Setup 
Suite Teardown    Log    i am iside Test Suite Teardown    
Test Setup    Log    i am inside Test Setup    
Test Teardown    Log    i am inside Test Teardown     
       
Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log  Hello World...
    
MySecondTest
    [Tags]   example 
    Log  i am inside 2nd Test
    Set Tags    regression1
    Remove Tags    regression1 
    
    
MyThirdTest
    Log  i am inside 3th Test
    
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text     name=q      Automation step by step     
    # Press Keys    name=q    ENTER
    # Sleep  2
    # Close Browser
    # Log    Test Completed 
    
# SampleLoginTest
    # [Documentation]    This is a login test
    # Open Browser     ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW 
    # Click Element    id=welcome
    # Click Element    link=Logout  
    # Close Browser 
    # Log              Test completed 
    # Log    this test was executed by %{username} on %{os}
    

*** Variables ***
${URL}      https://opensource-demo.orangehrmlive.com/
@{CREDENTIAL}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123





*** Keywords ***
LoginKW
    Input Text       id=txtUsername    @{CREDENTIAL}[0]
    Input Password   id=txtPassword     &{LOGINDATA}[password]  
    Click Button     id=btnLogin   
    










              
        
          