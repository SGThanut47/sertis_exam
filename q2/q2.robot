*** Settings ***
Library         RequestsLibrary

*** Variables ***


*** Keywords ***


*** Test Cases ***
API_1 Get all user ids with status code 200
    Create Session      accessSession             https://sertis-qa.glitch.me/
    ${resp}=    GET On Session     accessSession    /user/ids    expected_status=200    
    Log To Console          ${resp.json()}

API_2 Get user information for the specified user id with status code 200
    Create Session      accessSession             https://sertis-qa.glitch.me/
    ${resp}=    GET On Session     accessSession    /user/001    expected_status=200    
    Log To Console          ${resp.json()}        

API_3 Sign in by specifying "phone_no" and "otp" of a particular user id in a request body with status code 200
    Create Session      accessSession             https://sertis-qa.glitch.me/
    ${resp}=    GET On Session     accessSession    /user/001    expected_status=200    
    Log To Console          ${resp.json()['phone_no']}
    Log To Console          ${resp.json()['otp']}
    ${put_request_body}=    Create Dictionary          phone_no=${resp.json()['phone_no']}      otp=${resp.json()['otp']}       status=decreased    
    ${put_resp}=    POST On Session     accessSession    /signin       json=${put_request_body}    expected_status=200
    Log To Console          ${put_resp.json()} 

API_4 Get all user ids with status code 500
    Create Session      accessSession             https://sertis-qa.glitch.meat/
    ${resp}=    GET On Session     accessSession    /user/ids    expected_status=500    
    Log To Console          ${resp.json()}    

API_5 Get user information for the specified user id with status code 400
    Create Session      accessSession             https://sertis-qa.glitch.me/
    ${resp}=    GET On Session     accessSession    /user/003    expected_status=400   
    Log To Console          ${resp.json()} 

API_6 Get user information for the specified user id with status code 500
    Create Session      accessSession             https://sertis-qa.glitch.meat/
    ${resp}=    GET On Session     accessSession    /user/001    expected_status=500    
    Log To Console          ${resp.json()} 

API_7 Sign in by specifying "phone_no" and "otp" of a particular user id in a request body with status code 404
#On Given API Documentation: '404' -> message should be "User not found" but currently was "Sign in success"
    Create Session      accessSession             https://sertis-qa.glitch.me/
    ${resp}=    GET On Session     accessSession    /user/001    expected_status=200    
    Log To Console          ${resp.json()['phone_no']}
    Log To Console          ${resp.json()['otp']}
    ${put_request_body}=    Create Dictionary          phone_no=${resp.json()['phone_no']}123      otp=${resp.json()['otp']}123       status=decreased    
    ${put_resp}=    POST On Session     accessSession    /signin       json=${put_request_body}    expected_status=404
    Log To Console          ${put_resp.json()}     

API_8 Sign in by specifying "phone_no" and "otp" of a particular user id in a request body with status code 500
    Create Session      accessSession             https://sertis-qa.glitch.meat/
    ${resp}=    GET On Session     accessSession    /user/001    expected_status=200    
    Log To Console          ${resp.json()['phone_no']}
    Log To Console          ${resp.json()['otp']}
    ${put_request_body}=    Create Dictionary          phone_no=${resp.json()['phone_no']}      otp=${resp.json()['otp']}       status=decreased    
    ${put_resp}=    POST On Session     accessSession    /signin       json=${put_request_body}    expected_status=500
    Log To Console          ${put_resp.json()}  
