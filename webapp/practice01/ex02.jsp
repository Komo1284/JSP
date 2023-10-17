<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		Date 클래스와 SimpleDateFormat 클래스를 사용하여
		오늘의 날짜를 (년,월,일) 웹브라우저에 출력하기
	 --%>

	<%
		Date now = new Date();
	
		//out.print(now);
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat format2 = new SimpleDateFormat("a hh시 mm분 ss초");
		
		String date = format1.format(now);
		String time = format2.format(now);
		
	
	%>
	
	<h2>오늘의 날짜 : <%=date %></h2>
	
	<h2>현재 시간 : <%=time %></h2>

</body>
</html>