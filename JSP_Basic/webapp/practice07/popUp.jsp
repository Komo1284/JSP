<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>공지사항</p>
	<br><br><br><br><br><br><br>
	
	<form action="popUp.jsp" method="post">
	
		24시간동안 보지 않기! <input type="checkbox" name="popUp" value="notShow">
		
		<input type="submit" value="확인!">
	
	</form>
	
	<%
		String popUp = request.getParameter("popUp");
	
		if(popUp != null){
			
			if(popUp.equals("notShow")){
				
				Cookie cookie = new Cookie("popUp", "notShow");
				
				cookie.setMaxAge(60*60*24);
				cookie.setPath("/");
				response.addCookie(cookie);
				out.print("<script>");
				out.print("window.close()");
				out.print("</script>");
				
				// 웹페이지를 닫을때 window 객체의 close 함수를 사용한다.
			}
			
		}
	%>

</body>
</html>