***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open Website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click Contact Tab
    Sleep                ${time}
    Click Element        ${contact_tab}     

Input Contact Email
    Sleep                ${time}
    [Arguments]          ${email}
    Input Text           ${con_email_field}        ${email}     

Input Contact Name
    Sleep                ${time}
    [Arguments]          ${name}
    Input Text           ${con_name_field}        ${name}  

Input Message
    Sleep                ${time}
    [Arguments]          ${msg}
    Input Text           ${con_msg_field}        ${msg}  

Click Send message button
    Sleep                ${time}
    Click Button         ${msg_btn}
    Handle Alert         Accept

Click Close Button
    Sleep                ${time}
    Click Button         ${con_cancel_btn}

Click Close Symbol
    Sleep                ${time}
    Click Button         ${con_cancel_sym}

Capture Screenshot for verify
    Sleep               ${timescreen}
    [Arguments]         ${picname}
    Capture Page Screenshot         filename=${picname}   

Close Website
    Sleep                ${time}
    Close Browser

***Test Cases***
CT_1 Verify Contact Popup UI
    Open Website
    Click Contact Tab
    Capture Screenshot for verify        CT_1.png
    Close Website

CT_2 Verify that user able to send message with valid data
    Open Website
    Click Contact Tab
    Input Contact Email        test123@gmail.com
    Input Contact Name         Thanut Test
    Input Message              Hello Tester!!
    Click Send message button
    Close Website
    
CT_3 Verify that user unable to send message with invalid data
    Open Website
    Click Contact Tab
    Input Contact Email        test12345gmaicomt
    Input Contact Name         @#$%
    Input Message              ****
    Click Send message button
    Close Website

CT_4 Verify that user unable to send message while input field was empty 
    Open Website
    Click Contact Tab
    Click Send message button
    Close Website

CT_5 Verify that contact popup UI will close whe nuser click close symbol or Close Button
    Open Website
    Click Contact Tab
    Click Close Symbol
    Click Contact Tab
    Click Close Button
    Close Website

CT_6 Verify that user able to enter 49 characters on every input field
    Open Website
    Click Contact Tab
    Input Contact Email        Email123456789Email123456789Email123456@gmail.com
    Input Contact Name         ThanutTestThanutTestThanutTestThanutTestThanutTes
    Input Message              HelloWorldTest123HelloWorldTest123HelloWorldTest1
    Click Send message button
    Close Website

CT_7 Verify that user able to enter maximum 50 characters on every input field
    Open Website
    Click Contact Tab
    Input Contact Email        Email123456789Email123456789Email123456@gmail.com1
    Input Contact Name         ThanutTestThanutTestThanutTestThanutTestThanutTest
    Input Message              HelloWorldTest123HelloWorldTest123HelloWorldTest12
    Click Send message button
    Close Website

CT_8 Verify that user unable to enter 51 characters on every input field
    Open Website
    Click Contact Tab
    Input Contact Email        Email123456789Email123456789Email123456@gmail.com12
    Input Contact Name         ThanutTestThanutTestThanutTestThanutTestThanutTest1
    Input Message              HelloWorldTest123HelloWorldTest123HelloWorldTest123
    Click Send message button
    Close Website
