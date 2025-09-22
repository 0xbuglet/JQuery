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
	// alert("test7.jsp");
	
	$("input").click(function(){
		alert(" jquery 버튼 클릭 ! ");
	});
	
	$("input").on("click",function(){
// 		alert(" on 버튼 클릭 ! ");
	});
	
});
</script>

</head>
<body>
	<h1>test7.jsp</h1>
	
	<input type="button" value="버튼" onclick="alert('해당 이벤트 처리 완료!');">
	
	<hr>
	<h2>해당 h2 태그 클릭시 마다 + 기호 추가</h2>
	<h2>head - 0</h2>
	<h2>head - 1</h2>
	<h2>head - 2</h2>
	
	<script type="text/javascript">
		$("h2").click(function(){
			// alert("집가고싶다");
			$(this).append("+");
		});
	</script>
	
	<hr>
	
	<img alt="" src="../img/kitten-1.jpg">
	
	<script type="text/javascript">
		$("img").mouseover(function(){
			// alert("집가고싶어");
			$("img").attr("src","../img/kitten-2.jpg");
		});
		
		$("img").mouseout(function(){
			// alert("집가고싶어");
			$("img").attr("src","../img/kitten-1.jpg");
		});
	
		// 체이닝
		$("img").mouseover(function(){
			// alert("집가고싶어");
			$("img").attr("src","../img/kitten-2.jpg");
		}).$("img").mouseout(function(){
			// alert("집가고싶어");
			$("img").attr("src","../img/kitten-1.jpg");
		});
	</script>
	
	
</body>
</html>