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
		쿠키값이 hong인 쿠키객체 삭제 후
		리다이렉트로 loginForm.jsp 로 이동 요청하기
	 --%>
	 
	 <%
		 Cookie[] cookies = request.getCookies();

		for(int i = 0; i < cookies.length; i++){
		
			String cName = cookies[i].getName();
		
			if(cName.equals("cookieName")){
			
				cookies[i].setMaxAge(0);
		
				response.addCookie(cookies[i]);
			
				response.sendRedirect("loginForm.jsp");
			
			
			}
		}
	 
	 	
	 %>
	 
</body>
</html>