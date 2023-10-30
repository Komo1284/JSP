<%@page import="com.jsp.el.ELMember"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
		1. ELMember 타입의 ArrayList 생성
		2. 3개의 ELMember 객체를 생성 후 ArrayList에 저장하기
		3. request 객체에 ArrayList 바인딩하기
		4. jstl의 forEach 태그를 사용하여 ArrayList 안의 ELMember 객체의
		   아이디, 비밀번호, 이름, 나이 출력하기
	 --%>
	 
	 <%
	 	ArrayList<ELMember> list = new ArrayList<>();
	 	list.add(new ELMember("hong", "1234", "홍길동", 20));
	 	list.add(new ELMember("sung", "1111", "성춘향", 17));
	 	list.add(new ELMember("mong", "2222", "이몽룡", 21));
	 	
	 	request.setAttribute("member", list);
	 %>
	 
	
	 
	 <c:forEach var="member" items="${member}">
	 	아이디 : ${member.id }, 비밀번호 : ${member.pw },
	 	이름 : ${member.name }, 나이 : ${member.age }<br>
	 </c:forEach>

</body>
</html>