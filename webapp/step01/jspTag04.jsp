<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        
<%--
	지시자 : <%@ %>
	jsp 페이지의 속성을 지정할때 사용된다.
	page, include, taglib 지시자가 있다.
	page : 해당 페이지의 속성지정
	include : 별도의 페이지를 현재 페이지에 삽입
	taglib : 태그라이브러리의 태그사용(jstl을 사용하기 위해 지정)
 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		ArrayList<String> list = new ArrayList<>();
	
		list.add("홍길동");
		list.add("성춘향");
		list.add("이몽룡");
		
		for(String str : list){
			out.print(str + "<br>");
		}
	%>

</body>
</html>