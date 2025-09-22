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
		// [기본 문법]
		/* $.ajax({
			type : "GET/POST", (ajax 요청시 사용할 http 메서드 결정)
			url : "주소", (ajax 요청할 주소 url)
			data : "값", (ajax 요청시 전달할 데이터 값, 파라메터)
			dataType : "응답 데이터의 타입 (html,text,json)",
			sucess : function(data,status,jqXHR){
				(ajax 요청이 성공적으로 처리된 경우 실행)
				(data - 정상 처리의 결과)
				(status - 리턴 결과 문자)
				(jqXHR - xml, html, request 객체 - httpStatus 값)
			},
			error : function(){
				ajax 요청이 실패한 경우 실행
			}
		}); */
		
		// location.href="test9-1.jsp";
		// 비동기 방식으로 test 9-1.jsp 페이지에 갔다오기
		$.ajax({
			// tyep : "GET",
			url : "test9-1.jsp",
			// dataType : "html",
			success : function(data){
				//alert("비동기 방식 ajax 살행 성공");
				$("body").append(data);
			}
		});
		
		// test9-2.jsp 페이지에 ajax로 접근
		// 정보 전달(파라메터)
		$.ajax({
			url : "test9-2.jsp",
			data : { id:"itwill",
					 pass:"1234"}, // {} : 객체로 묶어서 보내는 것
			success : function(data){
				alert("비동기 방식 ajax 살행 성공");
				$("body").append(data);
			},
			error : function(){
				alert("error");
			}
		});
	});
</script>
</head>
<body>
	<h1>text9.jsp</h1>
	
	<!-- 9-2.jsp 페이지에 전달한 정보를 출력 -->
	
	
	<hr>
	
	<h2>아이디, 비밀번호 : </h2>
	<%=request.getParameter("id") %>, 
	<%=request.getParameter("pass") %>
	
	<script type="text/javascript">

	</script>
</body>
</html>