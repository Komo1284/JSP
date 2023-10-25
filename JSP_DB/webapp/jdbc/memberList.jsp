<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
		Connection conn;
		// Connection : DB와 연결성을 갖는 객체
		PreparedStatement pstmt;
		// PreparedStatement : DB의 데이터에 접근하여 SQL문을 실행하는 객체
		ResultSet rs;
		// ResultSet : 조회(SELECT) 결과 데이터를 갖는 객체
		
		String driver = "oracle.jdbc.OracleDriver";
		// OracleDriver : Oracle JDBC 드라이버 클래스이다.
		// 자바프로그램에서 데이터베이스에 접속하려면
		// 드라이버를 프로그램에 등록하는 코드를 제공해야 한다.
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
	%>

</body>
</html>