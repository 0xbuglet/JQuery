<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- JQuery 라이브러리 추가(CDN : Content Delivery Network) -->
<!-- <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script> -->

<!-- JQuery 라이브러리 추가(파일) -->
<script src="../js/jquery-3.7.1.min.js">
	alert(" 1. 자바스크립트 실행 ! ");
</script>

<script type="text/javascript">
	// $(document).ready() 호출 필수
	$(document).ready(function(){
		// 문서가 준비 완료 된다 == bodt 태그 로딩 완료
		alert(" 2. jquery 실행 ! ")
	});
	
	// 축약형
	$(function(){
		alert(" 3. jquery 실행 ! ")
	});
</script>

</head>
<body>
	<h1>/webapp/test1.jsp</h1>
	
	<h2>제이쿼리 실행</h2>
</body>
</html>