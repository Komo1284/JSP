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
		request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:useBean id="dto" class="com.jsp.member.MemberDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/>
	
	<%--
		property 속성값을 *로 지정을 하면 넘어오는 파라미터들의 데이터가
		프로퍼티의 속성값으로 바인딩(셋팅)된다.
		주의할 점은 넘어오는 파라미터의 이름과 프로퍼티의 이름이 일치해야 한다.
	 --%>
	 
	 <%
	 	// MemberDAO 객체 생성 후 회원 아이디 체크후에 같은 아이디가 없을때 DB에 데이터 넣기
	 	
	 	MemberDAO dao = MemberDAO.getInstance();
	 	
	 	boolean idCheck = dao.idCheck(dto.getId());
	 	
	 	if(idCheck == true){ //같은 아이디가 있는경우
	 		
	 	
	 
	 %>
	 
	 	<script>
	 		alert('아이디가 이미 존재합니다.');
	 		history.back(); // 이전 페이지로 이동
	 	</script>
	 
	 <%
	 	}else{ // 같은 아이디가 없는경우
	 		
	 		int result = dao.memberInsert(dto);
	 			
	 		if(result ==1){ // 회원가입이 되었을경우
	 			
	 %>
	 		<script>
	 			alert('회원가입이 되었습니다.');
	 			window.location = 'login.jsp';
	 		</script>
	 <%
	 			
	 		}else{ // 회원가입이 정상적으로 되지 않았을 경우
	 
	 %>
	 		<script>
	 			alert('회원가입에 실패했습니다.');
	 			history.back();
	 		</script>
	 <%
			}
	 %>
	 
	 	
	 	}
	 
	 

</body>
</html>