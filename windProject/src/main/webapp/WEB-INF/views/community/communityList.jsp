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
		overflow-y: auto;
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
		cursor: pointer;
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
		height: 150px;
		border-bottom: 1px solid rgba(112, 112, 112, 0.177);
		display: flex;
		justify-content: space-between;
	}
	.communityList-area2-container-content{
		flex: 1;
		padding: 15px 45px;
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
		display: flex;
		align-items: center;
	}
	.communityList-area2-container-content-title1{
		font-weight: bold;
		font-size: 18px;
		margin-right: 18px;
	}
	.communityList-area2-container-content-title2{
		margin-right: 10px;
	}

	.communityList-area2-container-content-content{
		flex: 1;
		display: flex;
		align-items: center;


	}
	.communityList-area2-container-content-profile{
		flex: 1;
	}
	.communityList-area2-container-content-profile-image{
		display: flex;
		align-items: center;
		margin-right: 14px;
		font-size: 14px;
	}
	.communityList-area2-container-content-profile-name{
		display: flex;
		align-items: center;
		margin-right: 14px;
		font-size: 14px;
	}
	.communityList-area2-container-content-profile-date{
		display: flex;
		align-items: center;
		font-size: 12px;
		color: gray;
	}

	.communityList-area2-container-pagebar-area{
		display: flex;
		align-items: center;
		justify-content: center;
		width: auto;
		height: 120px;
		
	}
	.communityList-area2-container-pagebar{
		height: 120px;
		position: fixed;
      	bottom: 0;
		display: flex;
		align-items: center;
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
			<div class="communityList-container-box">
				<div class="communityList-area2-container">
					<div class="communityList-area2-container-content">
						<div class="communityList-area2-container-content-title">
							<div class="communityList-area2-container-content-title1">제목입니다</div>
							<div class="communityList-area2-container-content-title2">댓글</div>
							<div class="communityList-area2-container-content-title3">5</div>
						</div>
						<div class="communityList-area2-container-content-content">내용입니다</div>
						<div class="communityList-area2-container-content-profile">
							<div class="communityList-area2-container-content-profile-image">사진</div>
							<div class="communityList-area2-container-content-profile-name">이사원</div>
							<div class="communityList-area2-container-content-profile-date">2023-11-28</div>
						</div>
					</div>
					<div class="communityList-area2-container-like">
						<div>하트</div>
						<div>5</div>
					</div>
				</div>
				<div class="communityList-area2-container">
					<div class="communityList-area2-container-content">
						<div class="communityList-area2-container-content-title">
							<div class="communityList-area2-container-content-title1">제목입니다</div>
							<div class="communityList-area2-container-content-title2">댓글</div>
							<div class="communityList-area2-container-content-title3">5</div>
						</div>
						<div class="communityList-area2-container-content-content">내용입니다</div>
						<div class="communityList-area2-container-content-profile">
							<div class="communityList-area2-container-content-profile-image">사진</div>
							<div class="communityList-area2-container-content-profile-name">이사원</div>
							<div class="communityList-area2-container-content-profile-date">2023-11-28</div>
						</div>
					</div>
					<div class="communityList-area2-container-like">
						<div>하트</div>
						<div>5</div>
					</div>
				</div>
				<div class="communityList-area2-container">
					<div class="communityList-area2-container-content">
						<div class="communityList-area2-container-content-title">
							<div class="communityList-area2-container-content-title1">제목입니다</div>
							<div class="communityList-area2-container-content-title2">댓글</div>
							<div class="communityList-area2-container-content-title3">5</div>
						</div>
						<div class="communityList-area2-container-content-content">내용입니다</div>
						<div class="communityList-area2-container-content-profile">
							<div class="communityList-area2-container-content-profile-image">사진</div>
							<div class="communityList-area2-container-content-profile-name">이사원</div>
							<div class="communityList-area2-container-content-profile-date">2023-11-28</div>
						</div>
					</div>
					<div class="communityList-area2-container-like">
						<div>하트</div>
						<div>5</div>
					</div>
				</div>
				<div class="communityList-area2-container">
					<div class="communityList-area2-container-content">
						<div class="communityList-area2-container-content-title">
							<div class="communityList-area2-container-content-title1">제목입니다</div>
							<div class="communityList-area2-container-content-title2">댓글</div>
							<div class="communityList-area2-container-content-title3">5</div>
						</div>
						<div class="communityList-area2-container-content-content">내용입니다</div>
						<div class="communityList-area2-container-content-profile">
							<div class="communityList-area2-container-content-profile-image">사진</div>
							<div class="communityList-area2-container-content-profile-name">이사원</div>
							<div class="communityList-area2-container-content-profile-date">2023-11-28</div>
						</div>
					</div>
					<div class="communityList-area2-container-like">
						<div>하트</div>
						<div>5</div>
					</div>
				</div>
				<div class="communityList-area2-container">
					<div class="communityList-area2-container-content">
						<div class="communityList-area2-container-content-title">
							<div class="communityList-area2-container-content-title1">제목입니다</div>
							<div class="communityList-area2-container-content-title2">댓글</div>
							<div class="communityList-area2-container-content-title3">5</div>
						</div>
						<div class="communityList-area2-container-content-content">내용입니다</div>
						<div class="communityList-area2-container-content-profile">
							<div class="communityList-area2-container-content-profile-image">사진</div>
							<div class="communityList-area2-container-content-profile-name">이사원</div>
							<div class="communityList-area2-container-content-profile-date">2023-11-28</div>
						</div>
					</div>
					<div class="communityList-area2-container-like">
						<div>하트</div>
						<div>5</div>
					</div>
				</div>
			</div>
			
			<!-- 페이징바 -->
			<div class="communityList-area2-container-pagebar-area">
				<div class="communityList-area2-container-pagebar">
					<!-- 페이지네이션 -->
					<div class="personManage_footer">
						<ul class="pagination">
							<li class="page-item disabled"><a class="page-link" href="#"><</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">></a></li>
						</ul>
					</div>
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
































