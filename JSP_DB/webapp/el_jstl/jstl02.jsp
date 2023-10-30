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
		if : if문 (else문 없음)
		test="조건식"
	 --%>
	 
	 <c:if test="${(1+2) == 3 }">
	 	<h3>참 입니다.</h3>
	 </c:if>
	 
	  <c:if test="${(1+2) == 5 }">
	 	<h3>거짓 입니다.</h3>
	 </c:if>
	 
	 <%--
	 	choose 태그는 자바의 if ~ else문 switch문과 비슷한 역할을 한다.
	 	case 문과 같은 역할을 하는 것은 choose 태그안의 when 태그이다.
	 	default 문과 같은 역할을 하는 것은 choose 태그안의 otherwise 태그이다.
	  --%>
	  
	  <c:set var="i" value="30"/>
	  
	  <c:choose>
	  
	  	<c:when test="${i == 10 }">
	  		i는 10 입니다.<br>
	  	</c:when>
	  	
	  	<c:when test="${i == 20 }">
	  		i는 20 입니다.<br>
	  	</c:when>
	  	
	  	<c:otherwise>
	  		i는 10,20이 아닙니다.<br>
	  	</c:otherwise>
	  
	  </c:choose>
	  
	  <hr>
	  
	  <%--
	  	forEach : for문
	   --%>
	   
	   <c:forEach var="a" begin="0" end="30" step="3">
	   
	   		${a }&nbsp;
	   
	   </c:forEach>
	   
	   <hr>
	   
	   <%
	   		ArrayList<String> list = new ArrayList<>();
	   
	   		list.add("홍길동");
	   		list.add("성춘향");
	   		list.add("이몽룡");
	   		request.setAttribute("names", list);
	   		//request 객체에 ArrayList 객체를 바인딩한다.
	   %>
	   
	   <c:forEach var="name" items="${names}">
	   		${name} &nbsp;<br>
	   </c:forEach>
</body>
</html>