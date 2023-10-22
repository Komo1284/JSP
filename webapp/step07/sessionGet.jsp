<%@page import="java.util.Enumeration"%>
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
		
		String sessionNameValue = (String)session.getAttribute("sessionName");
		// 세선이름으로 세션값을 얻을 수 있다.
		// 해당하는 세션이름이 없다면 getAttribute 메소드는 null 값을 반환해준다.
		
		out.print("sessionName 값 : " + sessionNameValue + "<br>");
		
		Integer sessionNumberValue = (Integer)session.getAttribute("sessionNumber");
		out.print("sessionNumber 값 : " + sessionNumberValue + "<br>");
		
		out.print("<hr>");
		
		String sName = null;
		String sValue = null;
		
		Enumeration<String> e = session.getAttributeNames();
		// 이름들의 목록을 Enumeration 타입으로 반환
		
		while(e.hasMoreElements()){
			
			sName = e.nextElement();
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션이름 : " + sName + "<br>");
			out.print("세션 값 : " + sValue + "<br>");
			
		}
		
		out.print("<hr>");
		
		String sessionID = session.getId();
		// 한 브라우저당 고유한 세션아이디가 생성이 된다.
		// 웹브라우저별로 생성되어진 세션을 구분할 수 있다.
		// 세션아이디는 웹브라우저의 JSESSIONID 의 값으로 설정되어
		// 세션쿠키로 저장이 되어진다.
		out.print("세션 아이디 : " + sessionID + "<br>");
		
		int sessionInter = session.getMaxInactiveInterval();
		// 세션의 유효시간 : 기본 30분
		out.print("세션의 유효시간 : " + sessionInter + "<br>");
		
		out.print("<hr>");
		
		session.removeAttribute("sessionName");
		// 세션이름으로 세션 Entry 삭제
		
		e = session.getAttributeNames();
		
		while(e.hasMoreElements()){
			
			sName = e.nextElement();
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션이름 : " + sName + "<br>");
			out.print("세션 값 : " + sValue + "<br>");
			
		}
		
		out.print("<hr>");
		
		session.invalidate();
		// 세션 무효화
		// 세션의 모든 데이터를 삭제한다.
		
		if(request.isRequestedSessionIdValid()){
			//유효한 세션이 있으면 true 반환, 없으면 false 반환
			out.print("유효한 세션이 있음<br>");
		}else{
			out.print("유효한 세션이 없음<br>");
		}
		
		
	
	%>

</body>
</html>