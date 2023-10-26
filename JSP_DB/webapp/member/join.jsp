<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<script>
		function joinFormCheck(){
			
			var id = document.joinForm.id.value;
			var pw = document.joinForm.pw.value;
			var pwCheck = document.joinForm.pwCheck.value;
			var name = document.joinForm.name.value;
			
			if(id == null || id == ""){
				alert('아이디는 필수사항 입니다.');
				document.joinFrom.id.focus();
				return;
			}
			
			if(id.length < 4){
				alert('아이디는 4글자 이상이어야 합니다.');
				document.joinFrom.id.focus();
				return;
			}
			
			if(pw == null || pw == ""){
				alert('비밀번호는 필수사항 입니다.');
				document.joinFrom.pw.focus();
				return;
			}
			
			if(pw != pwCheck){
				alert('비밀번호가 일치하지 않습니다.');
				document.joinFrom.pwCheck.focus();
				return;
			}
			
			if(name == null || name == ""){
				alert('이름은 필수사항 입니다.');
				document.joinFrom.name.focus();
				return;
			}
			
			document.joinFrom.submit();
			
		}
	</script>

	<%--
		회원가입 폼 만들기
		id, pw, pwCheck, name, email, address 입력받는 폼 만들기
	 --%>
	 
	 <br><hr>
	 <h2>회원가입 폼</h2>
	 <hr><br>
	 
	 <form name="joinForm" action="joinCheck.jsp" method="post">
	 
	 <table border="1">
	 	<tr>
	 		<th>아이디</th>
	 		<td><input type="text" name="id"></td>
	 	</tr>
	 	
	 	<tr>
	 		<th>비밀번호</th>
	 		<td><input type="password" name="pw"></td>
	 	</tr>
	 	
	 	<tr>
	 		<th>비밀번호 체크</th>
	 		<td><input type="password" name="pwCheck"></td>
	 	</tr>
	 	
	 	<tr>
	 		<th>이름</th>
	 		<td><input type="text" name="name"></td>
	 	</tr>
	 	
	 	<tr>
	 		<th>이메일</th>
	 		<td><input type="text" name="email"></td>
	 	</tr>
	 	
	 	<tr>
	 		<th>주소</th>
	 		<td><input type="text" name="address"></td>
	 	</tr>
	 	
	 	<tr>
	 		<td colspan="2">
	 			<input type="button" onClick="joinFormCheck()" value="회원가입">
	 	</tr>
	 	
	 </table>
	 
	 </form>

</body>
</html>