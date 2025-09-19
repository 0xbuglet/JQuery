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
		// alert("test3.jsp");
		
		// 메서드의 파라메터가 1개일때, 해당 속성의 값을 리턴
		var color = $("h2").css("color");
		alert("결과 : " + color);
		
		$("h2:first").css("color", "blue");
		$("h2").eq(1).css("color", "pink");
		
		var setColor = ["red", "blue", "pink"];
		$("h2").css("color", function(index, value){
			//alert("실행 : "+index+"/"+value);
			return setColor[index];
		});
		
		// 한 번에 여러개의 속성을 제어하는 방법
		$("h2").css({
			"color":"black",
			"background":"black"
		});
		
		$("h2").css({
			"color":"black",
			"background":function(idx){
				return setColor[idx];
			}
		});
		
	});
</script>

</head>
<body>
	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>
</body>
</html>