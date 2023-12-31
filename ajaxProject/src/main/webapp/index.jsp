<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
	<h1>Spring에서의 AJAX 사용법</h1>
	
	<H3>1. 요청시 값 전달, 응답결과 받아보기</H3>
	
	이름 : <input type="text" id="name"><br>
	나이 : <input type="text" id="age"><br>
	
	<button onclick="test1()">전송</button>
	<div id="result"></div>
	
	
	<script>

	
	function test1() {
		$.ajax({
			url : "ajax1.do",
			data : {
				name: $('#name').val(),
				age: $('#age').val()
			},
			success : function(result) {
				console.log(result);
				let str = ""
				for (let st of result){
					//str += "이름 : " + st.name + " 나이: " + st.age + "<br>";
					str += "이름 : " + st.name + " 나이: " + st.age +  " 이름: " + st.userName + " 번호 : " + st.phone + "<br>";
				}
				$('#result').html(str);
				
				
				
				// 응답데이터가 배열의 형태인 경우
				// let str = "이름 : " + result[0] + "<br>나이: " + result[1];
				// $('#result').html(str);
				
				// 응답데이터가 객체의 형태일 경우
				 ///let str = "이름 : " + result.name + "<br>나이: " + result.age;
				 // $('#result').html(str);
			},
			error: function() {
				console.log('ajax 실패');
			}
		})
		console.log(resArr)
	}
	
	</script>
	
	
</body>
</html>