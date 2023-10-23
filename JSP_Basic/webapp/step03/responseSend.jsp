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
		String strAge = request.getParameter("age");
		int age = Integer.parseInt(strAge);
		
		if(age >= 20){
			response.sendRedirect("/JSP_Basic/step03/OK.jsp?age=" + age);
		}else{
			response.sendRedirect("/JSP_Basic/step03/NG.jsp?age=" + age);
		}
	%>

</body>
</html>