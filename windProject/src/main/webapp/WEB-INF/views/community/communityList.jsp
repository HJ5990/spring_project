<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.menu{
		justify-content: space-between;
		height: 100vh;
	}
	.communityList-area1{
		width: 300px;
		border-right: 1px solid rgba(112, 112, 112, 0.177);
	}
	.communityList-area2{
		flex: 1;
	}
	.communityList-area3{
		display: flex;
		flex-direction: column;
		border-left: 1px solid rgba(112, 112, 112, 0.177);
		width: 300px;
	}
	.communityList-area1-button-div{
		display: flex;
		justify-content: center;
	}
	.communityList-area1-button{
		margin: 40px 0;
		border: 1px solid rgb(94, 94, 94);
		background-color: white;
		border-radius: 10px;
		width: 200px;
		height: 40px;
	}
	.communityList-area1-li li{
		padding-left: 80px;
		/* margin-top: 7px;
		margin-bottom: 7px; */
		padding-top: 7px;
		padding-bottom: 7px;
	}
	.communityList-area1-li li:hover{
		background-color: rgba(112, 112, 112, 0.177);
	}
	.communityList-area1-title{
		display: flex;
		justify-content: space-between;
		align-items: center;
		margin-bottom: 10px;
	}

	.communityList-area1-title h5{
		margin: 0 0 0 50px;
		align-items: center;
		font-weight: bold;
		
	}
	.communityList-area1-title > .plus-btn{
		margin-right: 30px;
		border: 1px solid rgb(190, 190, 190);
		color: rgb(190, 190, 190);
		background-color: white;
		width: 18px;
		height: 20px;
		font-size: 13px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.communityList-area3-title{
		height: 80px;
		border-bottom: 1px solid rgba(112, 112, 112, 0.177);
		display: flex;
		justify-content: center;
		align-items: center;
		justify-content: space-between;
		margin-bottom: 30px;
	}
	.communityList-area3-title > h5{
		margin: 0 0 0 40px;
		font-weight: bold;
	}
	.communityList-area3-title > div{
		margin: 0 40px 0 0;
	}

	.communityList-area3-member{
		display: flex;
		justify-content: space-between;
		align-items: center;
		margin-bottom: 10px;
	}
	.communityList-area3-member h5{
		margin: 0 0 0 40px;
		align-items: center;
		font-weight: bold;
		
	}
	.communityList-area3-title-btn{
		margin-right: 30px;
		border: 1px solid rgb(190, 190, 190);
		color: rgb(190, 190, 190);
		background-color: white;
		width: 55px;
		height: 20px;
		font-size: 10px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.communityList-area3-title-btn2{
		border: 1px solid rgb(190, 190, 190);
		color: rgb(190, 190, 190);
		background-color: white;
		width: 55px;
		height: 20px;
		font-size: 10px;
		
		align-items: end;
	}
	.communityList-area3-li li{
		padding-left: 60px;
		/* margin-top: 7px;
		margin-bottom: 7px; */
		padding-top: 6px;
		padding-bottom: 6px;
		font-size: 14px;
	}
	
	.communityList-area3-title-btn2-box{
		flex: 1;
		display: flex;
		align-items: end;
		justify-content: flex-end;
		margin-right: 30px;
		margin-bottom: 30px;
	}
	.communityList-area2-container{
		height: 200px;
		border: 1px solid black;
		display: flex;
		justify-content: space-between
	}
	.communityList-area2-container-content{
		flex: 1;
		padding: 30px 40px;
	}
	.communityList-area2-container-like{
		margin-top: 40px;
		width: 150px;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	.communityList-area2-container-content{
		display: flex;
		flex-direction: column;
	}
	.communityList-area2-container-content-profile{
		display: flex;
		flex-direction: row;
	}
	.communityList-area2-container-content-title{
		flex: 1;
	}
	.communityList-area2-container-content-content{
		flex: 1;
	}
	.communityList-area2-container-content-profile{
		flex: 1;
	}
</style>



</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="menu">
		<div class="communityList-area1">
			<div class="communityList-area1-button-div"><button class="communityList-area1-button">글쓰기</button></div>
			<div class="communityList-area1-title">
				<div><h5>내 커뮤니티</h5></div>
				<button class="plus-btn"><div>+</div></button>
			</div>
			<ul class="communityList-area1-li">
				<li>영업팀</li>
				<li>동갑모입</li>
				<li>20년 입사동기</li>
				<li>점심동료</li>
			</ul>
		</div>


		<div class="communityList-area2">
			<div class="communityList-area2-container">
				<div class="communityList-area2-container-content">
					<div class="communityList-area2-container-content-title">제목</div>
					<div class="communityList-area2-container-content-content">내용</div>
					<div class="communityList-area2-container-content-profile">
						<div>사진</div>
						<div>이름</div>
						<div>날짜</div>
					</div>
				</div>
				<div class="communityList-area2-container-like">
					<div>하트</div>
					<div>5</div>
				</div>
			</div>
		</div>


		<div class="communityList-area3">
			<div class="communityList-area3-title">
				<h5>영업팀</h5>
				<div>톱</div>
			</div>
			<div class="communityList-area3-member">
				<div><h5>멤버</h5></div>
				<button class="communityList-area3-title-btn"><div>초대하기</div></button>
			</div>
			<ul class="communityList-area3-li">
				<li>나차장 차장</li>
				<li>박주임 주임</li>
				<li>김대리 대리</li>
				<li>이사원 사원</li>
			</ul>
			<div class="communityList-area3-title-btn2-box">
				<button class="communityList-area3-title-btn2"><div>탈퇴하기</div></button>
			</div>	
		</div>
	</div>
</body>
</html>
































