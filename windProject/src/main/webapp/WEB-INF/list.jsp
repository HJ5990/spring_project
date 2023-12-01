<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .screen_full{
        width: 350px;
        display: flex;
        justify-content: center;
    }
    .screen_left{
        width: 400px;
        float: left;
    }
   .screen_leftUp{
      border-bottom: 1px solid rgba(112, 112, 112, 0.177);
        border-right: 1px solid rgba(112, 112, 112, 0.177);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 80px;
   }
    .screen_leftDown{
        height: calc(100vh - 140px);
        border-bottom: 1px solid rgba(112, 112, 112, 0.177);
        border-right: 1px solid rgba(112, 112, 112, 0.177);
        padding: 20px 50px;
    }
    .profileImgCircle{
        margin-right: 30px;
    }
    .profileImg{
        width: 64px;
        height: 64px;
        background-color: grey;
        border-radius: 50%;
    }
    .profileName{
        margin-right: 30px;
    }
    .profileCheckbox{
        margin-left: 10px;
    }
    .profileStatus{
        width: 8px;
        height: 8px;
        background-color: red;
        border-radius: 50%;

    }
    .leftDown_One{
        margin-top: 7px;
        margin-bottom: 7px;
    }
    .leftDown_Two{
        margin-top: 7px;
        margin-bottom: 7px;
        margin-left: 30px;
    }
    .leftDown_Three{
        margin-top: 7px;
        margin-bottom: 7px;
        margin-left: 60px;
        display: flex;
        align-items: center;
    }
    .leftDown_Three_Circle{
        width: 8px;
        height: 8px;
        background-color: red;
        border-radius: 50%;
    }
    .leftDown_Three_Name{
        margin-left: 7px;
    }
    .right_profileImgCircle{
        width: 240px;
        height: 240px;
        background-color: grey;
        border-radius: 50%;
    }
    .screen_right{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: nowrap;
        flex-direction: column;
        width: calc(100% - 350px);
    }
    .right_profile{
        width: 400px;
        height: 300px;
        background-color: rgba(85, 175, 130, 0.1);
        border-radius: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    .screen_rightUp{
        margin-bottom: 50px;
    }
    .profileOne{
        font-weight: bold;
        font-size: 17px;
        margin-bottom: 15px;
    }
    .profileTwo{
        font-weight: normal;
        font-size: small;
        margin-bottom: 50px;
    }
    .profileThree{
        font-weight: normal;
        font-size: 15px;
    }
    .profileFour{
        font-weight: normal;
        font-size: 15px;
        margin-bottom: 50px;
    }
    .chatIcon{
        font-size: 30px;
    }
    .mailIcon{
        font-size: 30px;
        margin-left: 30px;
    }
</style>
</head>
<body>
   <jsp:include page="../common/header.jsp" />
    <div class ="menu">
        <div class="screen_full">
            <div class="screen_left">
                <div class="screen_leftUp">
                    <div class="profileImgCircle">
                        <div class="profileImg">
                            
                        </div>
                    </div>
                    <div class="profileName">
                        <div style="font-weight: 600;">김영업</div>
                        <div>영업1팀·사원</div>
                    </div>
                    <div class="profileStatus"></div>
                    <div class="profileCheckbox">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="green" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                        </svg>
                    </div>    
                </div>
                <div class="screen_leftDown">
                    <div class="leftDown_One">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="grey" class="bi bi-plus-square-fill" viewBox="0 0 16 16" onclick="">
                            <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z"/>
                        </svg> KH강남
                        <div class="leftDown_Two">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="grey" class="bi bi-plus-square-fill" viewBox="0 0 16 16" onclick="">
                                <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z"/>
                            </svg>영업1팀
                        </div>
                        <div class="leftDown_Three">
                            <div class="leftDown_Three_Circle"></div><div class="leftDown_Three_Name">나차장</div>
                        </div>
                    </div>
                    <div class="leftDown_One">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="grey" class="bi bi-plus-square-fill" viewBox="0 0 16 16" onclick="">
                            <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z"/>
                        </svg> KH종로
                    </div> 
                </div>
            </div>
        </div>
    
        <div class="screen_right">
            <div class="screen_rightUp">
                <div class="right_profileImgCircle">

                </div>
            </div>
            <div class="screen_rightDown">
                <div class="right_profile">
                    <div class="profileOne">나차장</div>
                    <div class="profileTwo">KH강남 · 영업1팀 · 차장</div>
                    <div class="profileThree">010-1111-1111</div>
                    <div class="profileFour">asdfqwe11@naver.com</div>
                    <div class="profileFive">
                        <ion-icon class="chatIcon" name="chatbubbles-outline"></ion-icon>
                        <ion-icon class="mailIcon" name="mail-outline"></ion-icon>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
