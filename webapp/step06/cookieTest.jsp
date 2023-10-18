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
	
		if(cookies != null){
			for(int i = 0; i< cookies.length; i++){
				out.print("쿠키 이름 : " + cookies[i].getName() + "<br>");
				out.print("쿠키 값 : " + cookies[i].getValue() + "<br>");
				out.print("<hr>");
			}
		}
	%>
		

</body>
</html>