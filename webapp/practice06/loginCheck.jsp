<%@page import="javax.websocket.SendResult"%>
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
		1. id, pw 데이터 받기
		2. id가 sung 이고 pw 가 1111 이라면
			session  객체에 "id"로 값을 "sung" 으로 설정하여 저장하기
			main.jsp 로 리다이렉트 하기
		3. id나 pw가 틀리다면 loginForm.jsp로 리다이렉트 하기
	 --%>
	 
	 <%
	 	String id = request.getParameter("id");
	 	String pw = request.getParameter("pw");
	 
	 	if(id.equals("sung") && pw.equals("1111")){
	 		session.setAttribute("id", id);
	 		response.sendRedirect("main.jsp");
	 	}else{
	 		response.sendRedirect("loginForm.jsp");
	 	}
	 %>
	 
	

</body>
</html>