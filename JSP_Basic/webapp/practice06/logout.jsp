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
		세션의 모든 데이터 삭제 후
		리다이렉트로 loginForm.jsp 로 보내기
	 --%>
	 
	 <%
	 	session.invalidate();
	 	response.sendRedirect("loginForm.jsp");
	 %>

</body>
</html>