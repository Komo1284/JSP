<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
		1. 선언문으로 넘어올 데이터를 받을 변수 선언하기
		2. 스크립트릿으로 데이터를 받아 해당변수에 저장하기
		3. 표현식으로 웹브라우저에 데이터 출력하기
	 --%>

	<%!
		String studentID, name, age, area;
		String[] circle;
	%>
	
	<%
	 	request.setCharacterEncoding("UTF-8");
	
		studentID = request.getParameter("studentID");
		name = request.getParameter("name");
		age = request.getParameter("age");
		area = request.getParameter("area");
		circle = request.getParameterValues("circle");
	%>
	
	<h2>학생정보 출력하기</h2>
	
	학번 : <%=studentID %><br>
	이름 : <%=name %><br>
	나이 : <%=age %><br>
	거주지역 : <%=area %><br>
	동아리 : <%=circle %><br>
	

</body>
</html>