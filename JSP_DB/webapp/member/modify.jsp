<%@page import="com.jsp.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<%--
		회원 정보 수정 폼
		pw, email, address
	 --%>
	 
	 <%
	 	MemberDTO dto = (MemberDTO)session.getAttribute("member");
	 %>
	 
	 <br><hr>
	 <h2>회원정보 수정 폼</h2>
	 <hr><br>
	 
	 <form action="modifyCheck.jsp" method="post">
	 	
	 	<input type="hidden" name="id" value="<%=dto.getId() %>">
	 
		 <table border="1">
		 	
		 	<tr>
		 		<th>아이디</th>
		 		<td><%=dto.getId() %></td>
		 	</tr>
		 	
		 	<tr>
		 		<th>비밀번호</th>
		 		<td><input type="password" name="pw" value="<%=dto.getPw() %>"></td>
		 	</tr>
		 	
		 	<tr>
		 		<th>이름</th>
		 		<td><%=dto.getName() %></td>
		 	</tr>
		 	
		 	<tr>
		 		<th>이메일</th>
		 		<td><input type="text" name="email" value="<%=dto.getEmail() %>"></td>
		 	</tr>
		 	
		 	<tr>
		 		<th>주소</th>
		 		<td><input type="text" name="address" value="<%=dto.getAddress() %>"></td>
		 	</tr>
		 	
		 	<tr>
		 		<td colspan="2">
		 			<input type="submit" value="회원 정보수정">
		 	</tr>
		 </table>
	 </form>
	 

</body>
</html>