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
		id, pw 를 받는 로그인 폼 만들기
		loginCheck.jsp 로 전송하기
	 --%>
	 
	 <h2>로그인 폼</h2>
	 
	 <form action="loginCheck.jsp" method="post">
	 
	 ID : <input type="text" name="id"><br>
	 PW : <input type="password" name="pw"><br>
	 
	 <input type="submit" value="로그인">
	 
	 </form>
	 

</body>
</html>