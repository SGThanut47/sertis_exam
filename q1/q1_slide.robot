***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click left slide
    Sleep               ${timescreen}
    Click Element       ${left_slide}

Click right slide
    Sleep               ${timescreen}
    Click Element       ${right_slide}

Capture screenshot for verify
    Sleep               ${timescreen}
    [Arguments]         ${picname}
    Capture Page Screenshot         filename=${picname}   

Close website
    Sleep                ${time}
    Close Browser

***Test Cases***
SP_1 Verify that user able to slide left or right to see preview product images
    Open website
    Click left slide
    Capture screenshot for verify        SP_1_left.png
    Click right slide
    Capture screenshot for verify        SP_1_right.png
    Close website
