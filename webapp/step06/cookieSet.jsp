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
		Cookie cookie = new Cookie("cookieName", "cookieValue");
		// 쿠키 생성 : new Cookie("쿠키이름", "쿠키값");
		
		// cookie.setValue("newcookieValue");
		// 쿠키값 변경
		
		cookie.setMaxAge(60 * 60); // 1시간동안 쿠키유지
		// 유효시간 설정
		// 쿠키는 보통 유효시간을 정해주지 않으면 윕브라우저를 닫음과 동시에 쿠키가 삭제 > 세션쿠키
		// 그러나 유효시간을 정해놓으면 설정해놓은 유효시간 동안 쿠키가 존재하게 되고
		// 웹브라우저를 닫아도 유효시간이 남아있으면 쿠키는 삭제되지 않고 남아있게 된다.
		
		response.addCookie(cookie);
		// response 객체의 addCookie 메소드로 쿠키객체를 웹브라우저에 심는다.
		
	%>
	
	<h2>쿠키가 탑재되었습니다.</h2>
	
	<a href="cookieGet.jsp">쿠키 얻기</a>

</body>
</html>