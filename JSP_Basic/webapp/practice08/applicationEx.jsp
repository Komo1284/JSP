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
		application 객체를 사용하여 해당 페이지에 방문시 방문자수 출력하기
		예) 현재 방문자수 ~~명 입니다.
	 --%>
	 
	 <%
	 	int count = 0;
	 	
	 	if(application.getAttribute("visit") != null){
	 		count = (int)application.getAttribute("visit");
	 	}
	 	
	 	count++;
	 	
	 	application.setAttribute("visit", count);
	 
	 %>
	 
	 <h2>현재 방문자수는 : <%=count %>명 입니다.</h2>

</body>
</html>