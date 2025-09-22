<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#conntainer, #item, a {
	border: 2px solid black;
	display: block; 
	padding: 10px;
	margin: 10px;
	}
</style>

<script src="../js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#conntainer").click(function(){
			alert("집갈래");
		});
		
		$("#item").click(function(){
			alert("집갈래");
		});
		
		$("a").click(function(event){
			alert("집갈래");
			
			// 1. 페이지 링크 이동을 막기
			// event.preventDefault();
			// 2. 부모 요소로 이벤트 전달 막기
			// event.stopPropagation();
			
			// 3. 페이지 이동X, 부모 요소로 이벤트 전달X
			return false;
		});
		
		
		// 하위 요소를 클릭 시 상위 요소의 클릭 이벤트가 중첩되어 실행됨
	});
</script>
</head>
<body>
	<h1>test8.jsp</h1>
	
	<div id="conntainer">
		<h1 id="item">
			<a href="http://www.naver.com">이동합니다.</a>
		</h1>
	</div>
	
	<hr>
	
	<h2>200</h2>
	<textarea rows="10" cols="50"></textarea>
	
	<script type="text/javascript">
		$("textarea").keyup(function(){
			// alert("글자 입력!");
			var tmp = $(this).val(); // 특정 요소의 값을 가져오기 메서드
			// alert(tmp.lenght);
			
			$("h2").html(200 - tmp.length);
			if(200 - tmp.lenght < 0){
				$("h2").css("color","red");	
			}
			else {
				$("h2").css("color","black");
			}
			});
		});
	</script>
	
	<h1>열기, 닫기1</h1>
	<div>
		<h1>제목1</h1>
		<p>본문1</p>
	</div>
	<h1>열기, 닫기2</h1>
	<div>
		<h1>제목2</h1>
		<p>본문2</p>
	</div>
	
	<script type="text/javascript">
		$("h1").click(function(){
			// $(this).hide();
			// $(this).show();
			$(this).next().toggle();
		})
	</script>
	
	jbg 
	
</body>
</html>