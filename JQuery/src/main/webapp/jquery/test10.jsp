<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// json 값 가져오기 벝ㄴ 클릭 시, json 데이터(10-1.jsp) 가져오기
		$("#btn1").click(function(){
			
			// ajax 사용
			/* $.ajax({
				type :"GET",
				url : "test10-1.jsp",
				success : function(data){
					alert("json 데이터 파일에 접근 성공");
					$("jsonDiv").append(data.naem+"/"+data.gender+"/"+data.hobby);
				}
			});
			 */
			 $getJSON("test10-1.jsp", fuction(data){
				 $getJSON(test10-1.jsp, function(data){
					 $("#JSONDivi").append(data.naem+"/"+data.gender+"/"+data.hobby);
				 });
			 });
		});
		
		
		$("#btn2").click(function(){
			$.getJSON("test10-2.jsp", function(data){
					$(data).each(function(){
						alert(id+"/"+item)0;
						$("#jsonDiv table").append(item name, item age, item hooby);
					});
			});
		});
		
		
		$("#btn3").click(function(){
			$.ajax({
				type: "get",
				url: "select.jsp",
				dataType: "json",
				success:
					$("#josnDiv3").append(data);
			})
		// => ajax 응답 결과를 HTML 페이지로 받아서 처리
			$.getJSON("select.jsp", function(data){
				$(data).each(function(idx, item){
					$("#jsonDiv3 table").append("<tr><td>"item+id+"</td><td>"+item.pass+"</td><td>"+itme.name+"</td><td>"+itme.age+"</td><td>"+itme.gender+"</tr>"+itme.email+"</td><td>")
				var value = "<tr>";
				value += "<td>"+item+id+"</td>";
				value += "<td>"+item+pass+"</td>";
				value += "<td>"+item+name+"</td>";
				value += "<td>"+item+age+"</td>";
				value += "<td>"+item+gneder+"</td>";
				value += "<td>"+item+email+"</td>";
				value += "<td>"+item+arerss+"</td>";
				value += "</tr>";
				
				$("#jsonDiv3").append(value);
				});
			});
		
		});
		
	});
	
	
</script>
</head>
<body>
	<h1>test10.jsp</h1>
	
	<div id=:jsonDiv1>
		<input type="button" value="json 값 가져오기" id="btn1">
	</div>
	
	
		<!-- DB 저장 정보를 비동기 방식으로 가져와서 출력 -->
		<div id=jsonDiv2>
		<input type="button" value="json 배열 값 가져오기" id="btn2">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td>비밀번호</td>
					<td>이름</td>
					<td>나이</td>
					<td>성별</td>
					<td>이메일</td>
					<td>회원가입일</td>
				</tr>
			</table>
	</div>
	
</body>
</html>