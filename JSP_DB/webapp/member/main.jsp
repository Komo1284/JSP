<%@page import="com.jsp.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	if(session.getAttribute("member") == null){
%>
	<jsp:forward page="login.jsp" />
<%
	}

	MemberDTO dto = (MemberDTO)session.getAttribute("member");

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		text-align: center;
		margin: 0 auto;
	}
</style>
</head>
<body>
	<br><hr>
	<h2>메인 페이지 입니다.</h2>
	<hr><br>
	
	<h2>회원 아이디 : <%=dto.getId() %></h2>
	
	<h2>회원 이름 : <%=dto.getName() %></h2>
	
	<h2>회원 이메일 : <%=dto.getEmail() %></h2>
	
	<h2>회원 주소 : <%=dto.getAddress() %></h2>
	<br>
	
	<a href="modify.jsp">회원정보 수정</a>
	
	&nbsp;&nbsp;&nbsp;
	
	<a href="logout.jsp">로그아웃</a>
	
	&nbsp;&nbsp;&nbsp;
	
	<a href="delete.jsp">회원탈퇴</a>

</body>
</html>