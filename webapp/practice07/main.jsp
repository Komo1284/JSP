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
		쿠키이름이 popUp 이고 쿠키값이 notShow 인 쿠키가 존재하면
		팝업창 띄워주지 않고 존재하지 않을때만 팝업창 띄워주기
	 --%>
	 
	 <%
	 	boolean cookieCheck = false;
	 
	 	Cookie[] cookies = request.getCookies();
	 	
	 	if(cookies != null){
	 		for(int i = 0; i < cookies.length; i++){
	 			
	 			String cName = cookies[i].getName();
	 			String cValue = cookies[i].getValue();
	 			
	 			if(cName.equals("popUp") && cValue.equals("notShow")){
	 				cookieCheck = true;
	 			}
	 		}
	 	}
	 
	 %>

	<%
		if(cookieCheck == false){
	%>

	<script>
		window.open('popUp.jsp', 'pop', 'width=450, height=650');
		//open('팝업주소','팝업이름','설정')
	</script>
	<%
		}
	%>

</body>
</html>