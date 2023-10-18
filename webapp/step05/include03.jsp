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
		int a = 100;
	%>
	
	<h1>include03 페이지 입니다.</h1>
	
	<jsp:include page="include04.jsp"></jsp:include>
	
	<%--
		include 액션태그를 만나면 해당 페이지로
		실행제어가 넘어가서 포함되는 페이지를 실행시킨다.
		해당 페이지의 실행이 종료되면 다시 원래페이지로 복귀하며
		최종적으로 클라이언트한테 내용이 보여지게 된다.
	 --%>
	
	<h3>다시 include03 페이지 입니다.</h3>

</body>
</html>