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
		useBean 액션태그로 Member 빈클래스로부터 빈객체 생성하기
		setProperty 액션태그로 Member 빈 객체에 속성값 설정하기
		getProperty 액션태그로 Member 빈 객체에 속성값 얻어와 웹브라우저에 출력하기
	 --%>

	<jsp:useBean id="Member" class="com.jsp.member.Member" scope="page"/>
	
	<jsp:setProperty property="id" name="Member" value="karan1284"/>
	<jsp:setProperty property="pw" name="Member" value="Op95126522*"/>
	<jsp:setProperty property="age" name="Member" value="27"/>
	<jsp:setProperty property="name" name="Member" value="서강혁"/>
	
	ID : <jsp:getProperty property="id" name="Member"/><br>
	PW : <jsp:getProperty property="pw" name="Member"/><br>
	나이 : <jsp:getProperty property="age" name="Member"/><br>
	이름 : <jsp:getProperty property="name" name="Member"/><br>
	

</body>
</html>