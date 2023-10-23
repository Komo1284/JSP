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
		include란 현재의 문서에 다른문서
		즉, 다른 파일의 내용을 포함시켜 출력하는 것을 뜻한다.
	 --%>
	 
	 <h1>include01 페이지 입니다.</h1>
	 
	 <%@include file="include02.jsp" %>
	 
	 <%--
	 	include 지시자는 주로 조각난 코드를 삽입하고자 할 때 사용한다.
	 	요청한 소스코드를 텍스트에 포함하여 하나로 인식하여 컴파일한다.
	  --%>
	 
	 <h3>다시 include01 페이지 입니다.</h3>

</body>
</html>