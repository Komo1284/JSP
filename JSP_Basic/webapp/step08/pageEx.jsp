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
		pageContext 객체는 jsp페이지 내에서 정보를 저장하거나, 
		다양한 기능에 접근할 수 있도록 처리하는 객체이다.
	 --%>
	 
	 <h2>JSP PageContext</h2>
	 
	 <%
	 	pageContext.setAttribute("message", "Hello~ World!!");
	 	// 이름은 String 다입으로, Value는 Object 타입이다.
	 %>
	 
	 <h2>메세지 : <%=pageContext.getAttribute("message") %></h2>
	 

</body>
</html>