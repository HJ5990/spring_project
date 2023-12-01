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


	.communityList-area2-all{
		width: 100%;
		height: 100%;
		padding: 50px 100px 50px 60px;
	}

	.communityEnrollForm-title{
		font-weight: bold;
		font-size: 24px;
		margin-bottom: 20px;
	}
	.communityEnrollForm-table{
		width: 100%;
		border-collapse: separate;
      	border-spacing: 10px;
		padding-top: 10px;
	}
	.td1{
		width: 75px;
		font-weight: bold;
	}
	.td2{
		width: calc(100%)
	}
	.communityEnrollForm-table textarea{
		height: 400px;
		resize: none;
		padding: 20px;
	}
	.table-title{
		height: 35px;
		padding-left: 10px;
	}
	.table-file{
		height:80px;
		border: 1px dotted;
	}
	.form-button-all{
		display: flex;
		align-items: center;
		justify-content: center;
		margin: 20px 0;
	}
	.form-button1{
		height: 40px;
		width: 65px;
		border: 1px solid rgb(85, 175, 130);
		background-color: rgb(85, 175, 130);
		color: white;
		border-radius: 7px;
		margin: 0 15px;
	}
	.form-button2{
		height: 40px;
		width: 65px;
		border: 1px solid rgb(85, 175, 130);
		background-color: white;
		color: rgb(85, 175, 130);
		border-radius: 7px;
		margin: 0 15px;
	}
	.test-up{
		display : flex;
		align-items: flex-start;
		padding-top: 6px;
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
			<div class="communityList-area2-all">
				<div class="communityEnrollForm-title">글쓰기</div>
				<form action="">
					<table class="communityEnrollForm-table">
						<tr>
							<td class="td1">분류</td>
							<td>
								<select name="" id="">
									<option value="">영업팀</option>
									<option value="">동갑모입</option>
									<option value="">20년 입사동기</option>
									<option value="">점심동료</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="td1">제목</td>
							<td><input type="text" class="td2 table-title"></td>
						</tr>
						<tr>
							<td class="td1 test-up">파일첨부</td>
							<td><input type="text" class="td2 table-file"></td>
						</tr>
						<tr>
							<td class="td1 test-up">내용</td>
							<td><textarea class="td2" name="" id="" cols="30" rows="10"></textarea></td>
						</tr>

					</table>
					<div class="form-button-all">
						<button class="form-button1" type="submit">등록</button>
						<button class="form-button2">취소</button>
					</div>
				</form>
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
































