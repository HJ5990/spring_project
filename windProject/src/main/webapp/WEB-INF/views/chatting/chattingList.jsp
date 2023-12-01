<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- jQuery 3.7.1 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<style>
    .overflow-hidden{
        white-space: nowrap; /* 텍스트 줄 바꿈 금지 */
        overflow: hidden; /* 내용이 부모 요소를 벗어날 경우 자르기 */
        text-overflow: ellipsis; /* 생략 부분에 "..." 표시 */
    }


    .chattingList-area0{
        border-right: 1px solid rgba(112, 112, 112, 0.177);
        width: 400px;
        overflow-y: scroll;
    }
    .chattingList-area0::-webkit-scrollbar{
        display: none;
    }

    .chattingList-area1{
        border-right: 1px solid rgba(112, 112, 112, 0.177);
        width: 500px;
        overflow-y: scroll;
    }
    .chattingList-area1::-webkit-scrollbar{
        display: none;
    }

    .chattingList-area2{
        flex: 1;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }




    /* 채팅리스트 영역 */
    .chattingList-area1-container{
        height: 110px;
		border-bottom: 1px solid rgba(112, 112, 112, 0.177);
        padding: 15px 20px;
        display: flex;
        justify-content: space-between;
    }
    .chattingList-area1-container:hover{
        background-color: rgba(112, 112, 112, 0.177);
        border: none;
    }
    .chattingList-area1-container-area1{
        height: 80px;
        width: 80px;
        display : flex;
        justify-content: center;
        align-items: center;
    }
    .chattingList-area1-container-area2{
        height: 80px;
        flex: 1;
        margin: 5px 15px;
        display : flex;
        flex-direction: column;
        justify-content: space-around;
        min-width: 100px;
    }
    .chattingList-area1-container-area2-name{
        font-size: 15px;
        font-weight: bold;
    }
    .chattingList-area1-container-area2-content{
        font-size: 14px;
    }
    .chattingList-area1-container-area3{
        height: 80px;
        width: 80px;
        display : flex;
        justify-content: center;
        align-items: center;
    }




    /* 채팅 디테일 부분 */

    .chattingList-area2-header{
        height: 80px;
        display: flex;
        flex-direction: row;
        padding: 10px 30px;
        border-bottom: 1px solid rgba(112, 112, 112, 0.177);
    }
    .chattingList-area2-header-profile1{
        width: 60px;
        display : flex;
        justify-content: center;
        align-items: center;
    }
    .chattingList-area2-header-profile2{
        width: 50px;
        display : flex;
        justify-content: center;
        align-items: center;
        font-weight: bold;
    }
    .chattingList-area2-header-profile3{
        width: 100px;
        display : flex;
        justify-content: center;
        align-items: center;
        font-size: 14px;
        color: gray;
    }


    .chattingList-area2-footer{
        height: 90px;
        /* border-top: 1px solid rgba(112, 112, 112, 0.177); */
        background: linear-gradient(to bottom, rgba(255, 255, 255, 0), rgba(255, 255, 255, 1));
    }
    .chattingList-area2-footer-div{
        width: 100%;
        height: 100%;
        padding: 12px 20px;
        display: flex;
        justify-content: space-between;
    }
    .chattingList-area2-footer-div-input{
        flex: 1;
        height: 100%;
        border: 1px solid rgb(85, 175, 130);
        border-radius: 10px;
        margin-right: 15px;
        font-size: 12px;
        padding-left: 12px;
        outline: none;
    }
    .chattingList-area2-footer-div-button{
        width: 80px;
        border: none;
        background-color: rgb(85, 175, 130);
        color: white;
        border-radius: 10px;
    }

    
    .chattingList-area2-body{
        flex: 1;
        overflow-y: scroll;
    }
    .chattingList-area2-body::-webkit-scrollbar{
        display: none;
    }

    .body-chatting-you-area{
        margin: 15px 40px;
    }
    .body-chatting-me-area{
        margin: 20px 40px;
        display: flex;
        justify-content: end;
    }

    .body-chatting-you{
        border: 1px solid rgb(85, 175, 130);
        border-radius: 10px;
        background-color: rgb(85, 175, 130);
        color: white;
        display: inline-block;
        max-width: 600px;
        padding: 15px 30px;
        font-size: 14px;
    }

    .body-chatting-me{
        border-radius: 10px;
        color: rgb(45, 158, 102);
        border: 1px solid rgb(85, 175, 130);
        display: inline-block;
        max-width: 600px;
        padding: 15px 30px;
        font-size: 14px;
        
    }



 




    /* 조직도 부분 */
    .screen_full{
        width: 100%;
        display: flex;
        justify-content: center;
    }
    .screen_left{
        width: 400px;
        float: left;
    }
   .screen_leftUp{
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100px;
        border-bottom: 1px solid rgba(112, 112, 112, 0.177);
   }
    .screen_leftDown{
        height: calc(100vh - 160px);
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





/* gpt 테스트*/

.org-container {
      list-style: none;
      padding: 0;
    }

    .org-item {
      margin-bottom: 8px;
    }

    .org-title {
      cursor: pointer;
      padding: 8px;
      background-color: #f1f1f1;
    }

    .org-content {
      display: none;
    }




</style>
</head>
<body>
    <jsp:include page="../common/header.jsp" />
	<div class="menu">

        <!-- 조직도 부분 -->
        <div class="chattingList-area0">

            <div class="screen_full">
                <div class="screen_left">

                    <!-- 상단 프로필 -->
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

                    <!-- 하단 조직도 -->
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
                    



                            <!-- pgt 테스트 -->
                        <ul class="org-container">
                            <li class="org-item">
                                <div class="org-title">본부</div>
                                <ul class="org-content">
                                <li class="org-item">
                                    <div class="org-title">영업팀</div>
                                    <ul class="org-content">
                                    <li class="org-item">
                                        <div class="org-title">김가가 사원</div>   
                                    </li>
                                    </ul>
                                </li>
                                </ul>
                            </li>
                        </ul>   





                        <ul class="org-container">
                            <li class="org-item">
                                <div class="org-title">송파점</div>
                                <ul class="org-content">
                                    <li class="org-item">
                                        <div class="org-title">영업팀</div>
                                        <ul class="org-content">
                                            <li class="org-item">김가가 사원</li>
                                            <li class="org-item">김가가 사원</li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>   


                        <ul>
                            <li>1번
                            </li>
                        </ul>


                    

                    </div>






                </div>
            </div>
        </div>

        <!-- 리스트부분 -->
        <div class="chattingList-area1">
            <div class="chattingList-area1-container">
                <div class="chattingList-area1-container-area1">사진</div>
                <div class="chattingList-area1-container-area2">
                    <div class="chattingList-area1-container-area2-name overflow-hidden">대화상대대화상대대화상대대화상대대화상대대화상대</div>
                    <div class="chattingList-area1-container-area2-content overflow-hidden">내용요약내용요약내용요약내용요약내용요약</div>
                </div>
                <div class="chattingList-area1-container-area3">알림</div>
            </div>
            <div class="chattingList-area1-container">
                <div class="chattingList-area1-container-area1">사진</div>
                <div class="chattingList-area1-container-area2">
                    <div class="chattingList-area1-container-area2-name overflow-hidden">대화상대대화상대대화상대대화상대대화상대대화상대</div>
                    <div class="chattingList-area1-container-area2-content overflow-hidden">내용요약내용요약내용요약내용요약내용요약</div>
                </div>
                <div class="chattingList-area1-container-area3">알림</div>
            </div>
            <div class="chattingList-area1-container">
                <div class="chattingList-area1-container-area1">사진</div>
                <div class="chattingList-area1-container-area2">
                    <div class="chattingList-area1-container-area2-name overflow-hidden">대화상대대화상대대화상대대화상대대화상대대화상대</div>
                    <div class="chattingList-area1-container-area2-content overflow-hidden">내용요약내용요약내용요약내용요약내용요약</div>
                </div>
                <div class="chattingList-area1-container-area3">알림</div>
            </div>
            <div class="chattingList-area1-container">
                <div class="chattingList-area1-container-area1">사진</div>
                <div class="chattingList-area1-container-area2">
                    <div class="chattingList-area1-container-area2-name overflow-hidden">대화상대대화상대대화상대대화상대대화상대대화상대</div>
                    <div class="chattingList-area1-container-area2-content overflow-hidden">내용요약내용요약내용요약내용요약내용요약</div>
                </div>
                <div class="chattingList-area1-container-area3">알림</div>
            </div>
            <div class="chattingList-area1-container">
                <div class="chattingList-area1-container-area1">사진</div>
                <div class="chattingList-area1-container-area2">
                    <div class="chattingList-area1-container-area2-name overflow-hidden">대화상대대화상대대화상대대화상대대화상대대화상대</div>
                    <div class="chattingList-area1-container-area2-content overflow-hidden">내용요약내용요약내용요약내용요약내용요약</div>
                </div>
                <div class="chattingList-area1-container-area3">알림</div>
            </div>
            <div class="chattingList-area1-container">
                <div class="chattingList-area1-container-area1">사진</div>
                <div class="chattingList-area1-container-area2">
                    <div class="chattingList-area1-container-area2-name overflow-hidden">대화상대대화상대대화상대대화상대대화상대대화상대</div>
                    <div class="chattingList-area1-container-area2-content overflow-hidden">내용요약내용요약내용요약내용요약내용요약</div>
                </div>
                <div class="chattingList-area1-container-area3">알림</div>
            </div>
            <div class="chattingList-area1-container">
                <div class="chattingList-area1-container-area1">사진</div>
                <div class="chattingList-area1-container-area2">
                    <div class="chattingList-area1-container-area2-name overflow-hidden">대화상대대화상대대화상대대화상대대화상대대화상대</div>
                    <div class="chattingList-area1-container-area2-content overflow-hidden">내용요약내용요약내용요약내용요약내용요약</div>
                </div>
                <div class="chattingList-area1-container-area3">알림</div>
            </div>
            <div class="chattingList-area1-container">
                <div class="chattingList-area1-container-area1">사진</div>
                <div class="chattingList-area1-container-area2">
                    <div class="chattingList-area1-container-area2-name overflow-hidden">대화상대대화상대대화상대대화상대대화상대대화상대</div>
                    <div class="chattingList-area1-container-area2-content overflow-hidden">내용요약내용요약내용요약내용요약내용요약</div>
                </div>
                <div class="chattingList-area1-container-area3">알림</div>
            </div>  
            <div class="chattingList-area1-container">
                <div class="chattingList-area1-container-area1">사진</div>
                <div class="chattingList-area1-container-area2">
                    <div class="chattingList-area1-container-area2-name overflow-hidden">대화상대대화상대대화상대대화상대대화상대대화상대</div>
                    <div class="chattingList-area1-container-area2-content overflow-hidden">내용요약내용요약내용요약내용요약내용요약</div>
                </div>
                <div class="chattingList-area1-container-area3">알림</div>
            </div>          
        </div>


        <!-- 채팅부분 -->
        <div class="chattingList-area2">

            <!-- 채팅 : 헤더 -->
            <div class="chattingList-area2-header">
                <div class="chattingList-area2-header-profile1">사진</div>
                <div class="chattingList-area2-header-profile2">이름</div>
                <div class="chattingList-area2-header-profile3">(부서·직책)</div>
            </div>

            <!-- 채팅 : 바디 -->
            <div class="chattingList-area2-body">
                <!-- 상대방채팅 -->
                <div class="body-chatting-you-area">
                    <div class="body-chatting-you">
                        상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅상대방채팅
                    </div>
                </div>
                <div class="body-chatting-you-area"> 
                    <div class="body-chatting-you">
                        너
                    </div>
                </div>
                <div class="body-chatting-you-area"> 
                    <div class="body-chatting-you">
                        상대방
                    </div>
                </div>
                <div class="body-chatting-you-area"> 
                    <div class="body-chatting-you">
                        상대방
                    </div>
                </div>
                <div class="body-chatting-you-area"> 
                    <div class="body-chatting-you">
                        상대방
                    </div>
                </div>
                <div class="body-chatting-you-area"> 
                    <div class="body-chatting-you">
                        상대방
                    </div>
                </div>
                <div class="body-chatting-you-area"> 
                    <div class="body-chatting-you">
                        상대방
                    </div>
                </div>
                <div class="body-chatting-you-area"> 
                    <div class="body-chatting-you">
                        상대방
                    </div>
                </div>
                <!-- 내채팅 -->
                <div class="body-chatting-me-area">
                    <div class="body-chatting-me">
                        내채팅
                    </div>
                </div>
                <div class="body-chatting-me-area">
                    <div class="body-chatting-me">
                        나
                    </div>
                </div>
                <div class="body-chatting-me-area">    
                    <div class="body-chatting-me">
                        내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅내채팅
                    </div>
                </div>
            </div>

            <!-- 채팅 : 작성 -->
            <form action="">
                <div class="chattingList-area2-footer">
                    <div class="chattingList-area2-footer-div">
                        <input class="chattingList-area2-footer-div-input" type="text">
                        <button class="chattingList-area2-footer-div-button" type="submit">전송</button>
                    </div>
                
                </div>
            </form>
    
        </div>
        





        
    </div>




    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.org-title').click(function() {
                $(this).next('.org-content').slideToggle();
            });
        });
    </script>
</body>
</html>