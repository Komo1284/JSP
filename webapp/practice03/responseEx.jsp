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
		넘어온 정답을 받은 후 정답이 "홍길동" 과 같다면
		OK.jsp 로 리다이렉트하기
		정답이 틀리면 NG.jsp 로 리다이렉트 하기
	 --%>
	 
	 <%
		
	 	request.setCharacterEncoding("UTF-8");	
	 
	 	String name = request.getParameter("name");
		
		if(name.equals("홍길동")){
			response.sendRedirect("/JSP_Basic/practice03/OK.jsp");
		}else{
			response.sendRedirect("/JSP_Basic/practice03/NG.jsp");
		}
	%>

</body>
</html>