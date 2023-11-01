<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	*{
		text-align: center;
		margin: 0 auto;
	}
</style>
</head>
<body>

	<%--
		el과 jstl을 사용하여 게시판 목록페이지 만들기
	 --%>
	 
	 <br><hr>
	 <h2>나의 MVC 게시판</h2>
	 <hr><br>
	 
	 <table border="1">
	 
	 	<tr>
	 		<th>글번호</th>
	 		<th>작성자</th>
	 		<th>제목</th>
	 		<th>등록일</th>
	 		<th>조회수</th>
	 	</tr>
	 	
	 	<c:forEach var="dto" items="${list}">
	 	
	 		<tr>
	 			<td>${dto.boardID}</td>
	 			<td>${dto.writer}</td>
	 			<td>${dto.title}</td>
	 			<td>
	 				<fmt:formatDate value="${dto.boardDate}" pattern="yyyy년 MM월 dd일"/>
	 			</td>
	 			<td>${dto.hit}</td>
	 		</tr>
	 	
	 	</c:forEach>
	 	
	 	<tr>
	 	
	 		<td colspan="5">
	 			<a href="/JSP_MVC/writeForm.do">글 작성하기</a>
	 		</td>
	 	
	 	</tr>
	 
	 </table>

</body>
</html>