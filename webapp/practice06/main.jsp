<%@page import="java.util.Enumeration"%>
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
		세션객체의 getAttributeNames 메소드로 세션 이름들의 목록을 받은 후
		세션이름과 값을 얻고 세션값이 "sung" 과 같다면
		웹브라우저에 성춘향님 안녕하세요 출력
	 --%>
	 
	 <%
	 	Enumeration<String> e = session.getAttributeNames();
	 
	 	while(e.hasMoreElements()){
	 		
	 		String sName = e.nextElement();
	 		String sValue = session.getAttribute(sName).toString();
	 		
	 		if (sValue.equals("sung")){
		 		out.print("<h2>성춘향님 안녕하세요~!!!</h2>");
		 	}
	 	}
	 	
	 		
	 %>
	 
	 <a href="logout.jsp">로그아웃</a>

</body>
</html>