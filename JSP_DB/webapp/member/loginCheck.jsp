<%@page import="com.jsp.member.MemberDTO"%>
<%@page import="com.jsp.member.MemberDAO"%>
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
		1. id, pw 데이터 받기
		2. DAO 객체 생성 후 loginCheck 메소드 호출하여 결과값 얻은 후
			아이디와 비밀번호가 맞는경우에 getMember 메소드 호출하여 DTO 객체 얻기
	 --%>
	 
	 <%
	 	String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = MemberDAO.getInstance();
		
		int result = dao.loginCheck(id, pw);
		
		if(result == -1){
		%>
			<script>
				alert('아이디가 틀립니다.');
				history.back();
			</script>
		<%
	 		
	 	}else if(result == 0){
	 		%>
			<script>
				alert('비밀번호가 틀립니다.');
				history.back();
			</script>
		<%
	 		
	 	}else if(result == 1){
	 		
			MemberDTO dto = dao.getMember(id);
			
			if(dto == null){
				%>
				<script>
					alert('존재하지 않는 회원입니다.');
					history.back();
				</script>
				<%
			}else{
				session.setAttribute("member", dto);
				response.sendRedirect("main.jsp");
			}
			
			
	 		
	 	}
	 %>

</body>
</html>