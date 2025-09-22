<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(document){
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
	}
</script>
</head>
<body>
	<h1>text9-2.jsp</h1>
	
	<%
		System.out.println("9-2");
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("pass"));
	%>
	<h2>아이디 : <%=request.getParameter("id") %></h2>
	<h2>비밀번호 : <%=request.getParameter("pass") %></h2>
	<script type="text/javascript">
	
		
	</script>
</body>
</html>
</body>
</html>