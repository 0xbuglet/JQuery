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
	
	<hr>
	
	<div id="divXML">
		<h2>(eXtensible Markup Language)</h2>
		<p>HTML처럼 생겼다(태그로 구성), 데이터를 저장</p>
		
		<input type="button" value="xml 정보 가져오기" id="btnXML">
		
	</div>
	
	<script type="text/javascript">
		// btnXML 버튼 클릭시 비동기 방식으로 test9-3.jsp 페이지에서
		// XML 데이터를 가져와서 출력
		$("#btnXML").click(function(){
			$.ajax({
				url : "test9-3.jsp",
				success : function(data){
					alert("xml 페이지 다녀옴");
					//$("#divXML").append(data);
					//console.log(data);
					
					// 전체 데이터를 모두 감싸는 태그에 접근
					$(data).find("person").each(function(){
						var name = $(this).find("name").text();
						var age = $(this).find("age").text();
						var gender = $(this).find("gender").text();
						
						$("#divXML").append(name+"/"+age+"/"+gender+"<hr>");
					});
				}
			});
			
			// AJAX CORS (동일한 도메인 주소에 대한 접근 해야한다는 정책)
			
			$.ajax({
				
				// "https://news-ex.jtbc.co.kr/v1/get/rss/section/sports"
				url : "jtbc.xml",
				success : function() {
					alert("jtbc rss 다녀옴");
					
					$(data).find("item").each(function(){
							var title = $(this).find("title").text();
							var link = $(this).find("link").text();
							
							// $("#newsDiv").append(title + "<br>");
							// $("#newsDiv").append(link + "<br>");
							$("#newsDiv").append("<a hred='"+link+"'>"+title+"</a>");
					});
				}
			})
		});
	</script>
	
	<div id="newDiv">
		<h1>JTBC 뉴스 정보 (제목, 링크)</h1>
		
	
	</div>
</body>
</html>