<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
		String dirver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "C##JSPUSER";
		String upw = "jsp123";
	%>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		String query = "INSERT INTO MEMBER(ID, PW, NAME, EMAIL, ADDRESS)" + "VALUES(?, ?, ?, ?, ?)";
		
		try{
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(query);
			
			// PreparedStatement 의 setter 메소드로 ? 의 데이터를 넣어준다.
			pstmt.setString(1, id);
			// 첫번째로는 ?의 인덱스를 넣어주고 두번째로 해당하는 데이터를 넣어준다.
			// ?의 인덱스는 1부터 시작한다.
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, address);
			
			int i = pstmt.executeUpdate();
			// executeUpdate : 변경된 레코드의 수를 반환
			
			if(i == 1){
				System.out.println("INSERT 성공!!");
				out.print("<h2>INSERT 성공!!</h2>");
			}
			
			
		}catch(Exception e){
			System.out.println("INSERT 실패!!");
			e.printStackTrace();
		}finally{
			
			try{
				
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
				
			}catch(Exception e2){}
			
		}
	%>

</body>
</html>