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
		jsp 주석입니다.
		jsp 주석은 웹브라우저에 노출되지 않습니다.
	 --%>
	 
	 <%-- 
	 	스크립트릿 : <% %>
	 	자바에서 사용하는 모든 것을
	 	사용할 수 있는 자바의 영역이다.
	 	자바의 기능을 가지고 여러가지 작업을 할 수 있다.
	  --%>
	  
	  <%
	  	for(int i = 1; i <= 5; i++){
	  		
	  		if(i % 2 == 1) {
	  			out.print(i + "&nbsp;");
		  		// out : jsp 페이지의 어떤 결과를 출력할때 사용되는 출력스트림 내장객체
	  		}
	  		
	  	}
	  
	  %>
	  
	  <hr>
	  
	  <%
	  
	  	for(int i = 0; i < 5; i++){
	  	
	  %>
	  		<h2>안녕하세요</h2>
	  <%
	  	}
	  %>

</body>
</html>