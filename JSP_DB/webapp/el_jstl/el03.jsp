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
		서블릿 보관소에 저장된 데이터를 EL 내장객체로 사용할 수 있다.
	 --%>
	 
	 <%
	 	application.setAttribute("appliName", "appliValue");
	 	session.setAttribute("sessionName", "sessionValue");
	 	request.setAttribute("requestName", "requestValue");
	 	pageContext.setAttribute("pageName", "pageValue");
	 %>
	 
	 어플리케이션 : ${applicationScope.appliName }<br>
	 세션 : ${sessionScope.sessionName }<br>
	 리퀘스트 : ${requestScope.requestName}<br>
	 페이지 : ${pageScope.pageName }<br>
	 
	 <hr>
	 
	 어플리케이션 : ${appliName }<br>
	 세션 : ${sessionName }<br>
	 리퀘스트 : ${requestName}<br>
	 페이지 : ${pageName }<br>

</body>
</html>