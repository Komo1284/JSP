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
		 Cookie[] cookies = request.getCookies();
	
		for(int i = 0; i < cookies.length; i++){
			
			String cName = cookies[i].getName();
			
			if(cName.equals("cookieName")){
				
				cookies[i].setMaxAge(0);
				//유효시간을 0으로 설정
				response.addCookie(cookies[i]);
				//response 의 addCookie 메소드로
				//변경된 쿠키객체를 웹브라우저에 탑재
				
				out.print(cookies[i].getName() + " 쿠키가 삭제되었습니다.<br>");
				
				
			}
		}
	%>
	
	<a href="cookeTest.jsp">쿠키 확인</a>

</body>
</html>