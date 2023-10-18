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
		request 객체의 getCookies 메소드로 cookie 객체를 얻는다.
		cookie 객체의 value 값이 "hong" 과 같다면
		웹브라우저에 홍길동님 안녕하세요 출력하기
	 --%>
	 
	 <%
	 	Cookie[] cookies = request.getCookies();
	 	for(int i =0; i < cookies.length; i++){
	 		
	 		String id = cookies[i].getValue();
	 		
	 		if (id.equals("hong")){
	 			out.print("<h2>홍길동님 안녕하세요.</h2>");
	 		}
	 	}
	 
	 %>
	 
	 <h2><a href="logout.jsp">로그아웃</a></h2>

</body>
</html>