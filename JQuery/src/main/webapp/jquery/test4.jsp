<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		// css() 함수 : css 속성의 값을 제어하는 함수
		// attr() 함수 : 태그 요소의 속성을 제어하는 함수
		
		// img 태그의 src 속성값을 출력
		var src = $("img").attr("src");
		alert("출력 : " + src);
		
		// 이미지 border 속성을 변경
		$("img").attr("border", "5");
		$("img").attr("width", "100");
		
		// 각 이미지의 border 속성을 각각 다르게 설정
		$("img").attr("border", function(idx){
			return (idx+1)*5;
		});
		
		$("img").attr("height", function(idx){
			return(idx)*50;
		},
		"width":"100",
		"border":"5"
	});
</script>
</head>
<body>
	<img alt="" src="../img/kitten-1.jpg">
	<img alt="" src="../img/kitten-2.jpg">
	<img alt="" src="../img/kitten-3.jpg">
</body>
</html>