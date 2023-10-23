<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		// 세션객체는 jsp 에서 생성하지 않아도 사용할 수 있는 내장 객체이다.
		session.setAttribute("sessionName", "sessionValue");
		// setAttribute("세션이름", 세선값);
		// 이름은 String 타입으로 저장, 값은 Object 타입으로저장
		
		session.setAttribute("sessionNumber", 12345);
		
		
		
	%>
	
	<h2>세선이 생성되었습니다.</h2>
	
	<a href="sessionGet.jsp">세선 얻기</a>
	

</body>
</html>