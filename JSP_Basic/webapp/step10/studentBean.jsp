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
		id : jsp페이지에서 자바빈 객체에 접근할때 사용하는 이름명시
		class : 패키지 이름을 포함한 자바빈 클래스의 이름을 정확하게 명시
		scope : 자바빈 객체가 저장될 영역을 지정 (page, request, session. application)
	 --%>

	<jsp:useBean id="student" class="com.jsp.student.student" scope="page"/>
	
	<jsp:setProperty property="studentID" name="student" value="202301"/>
	<jsp:setProperty property="name" name="student" value="홍길동"/>
	<jsp:setProperty property="age" name="student" value="20"/>
	<jsp:setProperty property="grade" name="student" value="1"/>
	
	학번 : <jsp:getProperty property="studentID" name="student"/><br>
	이름 : <jsp:getProperty property="name" name="student"/><br>
	나이 : <jsp:getProperty property="age" name="student"/><br>
	학년 : <jsp:getProperty property="grade" name="student"/><br>

</body>
</html>