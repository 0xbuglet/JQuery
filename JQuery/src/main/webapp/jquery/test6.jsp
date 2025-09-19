<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.high_0{ background: red; }
	.high_1{ background: orange; }
	.high_2{ background: yellow; }
	.high_3{ background: green; }
	.high_4{ background: blue; }
</style>

<script src="../js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//alert("test6.jsp");
		
		// 해당 요소에 동적으로 class 생성
		$("h2").each(function(index){
			//alert(index);
			// addClass(클래스이름) : 클래스 이름 설정하는 메서드
			//$("h2").addClass("high_" + index);
			
			// => h2 가 여러개, 한 번에 여러개의 h2에 동시에 접근
			// => 한번에 하나씩 요소애 클래스명 설정
			
			$(this).addClass("high_" + index);
			// this : 객체 자신을 표현하는 레퍼런스
			//		  + event 가 발생한 요소를 나타냄
			
		});
		
	});
</script>
</head>
<body>
	<!-- class 직접 설정 -->
	<!-- <h2 class="high_0">head-0</h2>
	<h2 class="high_1">head-1</h2>
	<h2 class="high_2">head-2</h2>
	<h2 class="high_3">head-3</h2>
	<h2 class="high_4">head-4</h2> -->
	
	<hr>
	
	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>
	<h2>head-3</h2>
	<h2>head-4</h2>
	
		
</body>
</html>