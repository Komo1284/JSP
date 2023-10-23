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
		String age = request.getParameter("age");
	%>

	<h2>성인 입니다.</h2>
	
	<h2>주류 구매를 할 수 있습니다.</h2>
	
	<h2>입력하신 나이 : <%=age %></h2>
	
	<a href="/JSP_Basic/step03/responseForm.html">처음으로 이동</a>

</body>
</html>