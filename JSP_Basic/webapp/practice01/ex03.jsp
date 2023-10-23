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
		Math.random() 를 사용하여 주사위번호 하나를 뽑는 메소드 만들기 (선언문)
		
		웹브라우저에 메소드를 호출하여 주사위 번호를 윕브라우저에 출력하기
	 --%>
	 
	 <%!

		public int getDice(){
		 return (int)(Math.random() * 45) + 1;
	 }
	 
	 %>
	 
	 <%
	 	
	 %>
	 
	 <h2>오늘의 로또 번호 : <%=getDice() %></h2>

</body>
</html>