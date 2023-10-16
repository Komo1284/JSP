<%@page import="java.util.ArrayList"%>
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
		Integer 타입의 ArrayList를 생성한 후
		로또번호(1~45) 6개를 뽑은 후 ArrayList에 저장하기(중복X)
		로또번호를 웹브라우저에 출력하기
	 --%>
	
	 
	 <%
	 ArrayList<Integer> list = new ArrayList<>(); 

	 while(list.size() < 6){
		 int num = (int)(Math.random() * 45) +1;
		 
		 // contains : 매개값으로 주어진 객체가 리스트 안에 있다면 true 반환
		 if(!list.contains(num)){
			 list.add(num);
		 }
	 }
	 
	 Collections.sort(list);
	 	
	 %>
	 
	 <h2>로또번호 추첨 결과</h2>
	 
	 <%
	 	for(int num : list){
	 		out.print("<b>" + num + "</b>&nbsp;");
	 	}
	 %>

</body>
</html>