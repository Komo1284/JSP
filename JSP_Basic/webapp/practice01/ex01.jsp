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
		1. 선언문으로 이름, 나이, 전화번호의 변수 선언하기
		2. 스크립트릿으로 변수 초기화하기
		3. 표현식으로 웹브라우저에 변수값 출력하기
	 --%>

<%!
	String name;
	String age;
	String phonenumber;
%>

<%
	name = "서강혁";
	age = "27";
	phonenumber = "01076421284";
%>

이름 : <%=name %><br>
나이 : <%=age %><br>
전화번호 : <%=phonenumber %><br>

</body>
</html>