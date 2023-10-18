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
		header.jspf 와 footer.jspf 작성 후
		include 지시자로 include하기
	 --%>
	 
	 <%@include file="header.jspf" %>
	 
	 <br><br><br><br><br><br><br><br><br><br><br>
	 
	 <h1>메인 페이지 입니다.</h1>
	 
	 <br><br><br><br><br><br><br><br><br><br><br>
	 
	 <%@include file="footer.jspf" %>

</body>
</html>