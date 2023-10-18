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
		1. 넘어온 id,pw 데이터 받기
		2. id가 "hong" 이고 pw 가 "1234" 라면
			cookie의 이름을 id로 value를 "hong"으로 설정하여
			쿠키객체 생성하고 response 객체에 addCookie 메소드로 쿠키 탑재하기
		3. response 객체의 리다이렉트로 main.jsp 로 리다이렉트 하기
			(id, pw) 데이터가 틀리다면 loginForm.jsp 로 리다이렉트 하기
	 --%>
	 
	 <%
	 	request.setCharacterEncoding("UTF-8");
	 
	 	String id = request.getParameter("id");
	 	String pw = request.getParameter("pw");
	 	
	 	if (id.equals("hong") && pw.equals("1234")){
	 		
	 		Cookie cookie = new Cookie("id", id);
	 		cookie.setMaxAge(60 * 60);
	 		response.addCookie(cookie);
	 		response.sendRedirect("main.jsp");
	 		
	 	}else{
	 		response.sendRedirect("loginForm.jsp");
	 	}
	 %>

</body>
</html>