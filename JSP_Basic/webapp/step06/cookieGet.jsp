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
		//쿠키 객체들을 배열로 얻을 수 있다.
		
		for(int i = 0; i < cookies.length; i++){
			
			// getName : 쿠키 이름을 얻는다.
			// getValue : 쿠키 값을 얻는다.
			String cName = cookies[i].getName();
			
			if(cName.equals("cookieName")){
				
				out.print("설정한 쿠키이름 : " + cookies[i].getName() + "<br>");
				out.print("설정한 쿠키값 : " + cookies[i].getValue() + "<br>");
				out.print("<hr>");
			}
			
		}
	
	%>
	
	<a href="cookieDelete.jsp">쿠키 삭제</a>

</body>
</html>