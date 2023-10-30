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
		EL(Expression Language) 은
		정수, 실수, 논리, 문자열, null을 표현할 수 있다.
	 --%>
	 
	 정수 : ${100 }<br>
	 실수 : ${3.14 }<br>
	 논리 : ${true }<br>
	 문자열 : ${'Hello World' }<br>
	 널 : ${null }<br>
	 
	 <hr>
	 
	 <%--
	 	EL에서 사용하는 연산자는
	 	산술, 비교(관계), 논리, 조건(삼항) 연산자가 있다.
	  --%>
	  
	  ${1+2 }<br>
	  ${1 < 2 }<br>
	  ${(1<2) || (5<2) }<br>
	  ${(1<2) && (5<2) }<br>
	  ${(1<2) ? "참 입니다." : "거짓 입니다." }<br>
	 
	 

</body>
</html>