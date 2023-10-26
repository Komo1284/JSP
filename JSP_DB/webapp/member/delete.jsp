<%@page import="com.jsp.member.MemberDAO"%>
<%@page import="com.jsp.member.MemberDTO"%>
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
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		MemberDAO dao = MemberDAO.getInstance();
		
		int result = dao.deleteMember(dto.getId());
		
		if(result == 1){
	%>
			<script>
				alert('회원탈퇴가 되었습니다.');
				window.location = 'logout.jsp';
			</script>	
	<%
		}else{
	%>
			<script>
				alert('회원탈퇴 실패입니다.');
				history.back();
			</script>		
	<%
		}
	%>

</body>
</html>