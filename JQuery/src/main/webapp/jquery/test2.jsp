<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* alert("test2.jsp"); */
		$("*").css("color", "green"); // 모든 요소에 접근
		$("h1").css("color", "pink");
	
		$("#h1").css("color", "tomato"); // 아이디 선택자 (개발)
		$(".h1").css("color", "tomato"); // 클래스 선택자 (디자인)
		
		// 속성선택 선택자
		$("input").css("color", "blue");
		$("input[type=text]").css("color", "blue");
		$("input[type=password]").css("color", "pink");
		$("input[type^=p].css").css("color", "red");
		
		// 테이블 요소의 배경색 색칠
		$("tr:first").css("background", "yellow");
		$("tr:last").css("background", "yellow");
		$("tr:odd").css("background", "pink");
		$("tr:even").css("background", "yellow");
		// 행을 구분하는 인덱스는 항상 0부터 시작
	});
</script>
</head>
<body>
	<h1>/webapp/test2.jsp</h1>
	
	<h2> jQuery는 조금 더 편하게 요소(tag)에 접근 가능 </h2>
	<br>
	<hr>
	<br>
	
	<h1 class="h1"> 제목 </h1>
	
	<h2>
	아이디 : <input type="text"> <br>
	비밀번호 : <input type="password"> <br>
	</h2>
	
	<hr>
	
	<table border="1">
		<tr>
			<td>1</td><td>2</td><td>3</td>
		</tr>
		<tr>
			<td>1</td><td>2</td><td>3</td>
		</tr>
		<tr>
			<td>1</td><td>2</td><td>3</td>
		</tr>
		<tr>
			<td>1</td><td>2</td><td>3</td>
		</tr>
	
	</table>
</body>
</html>