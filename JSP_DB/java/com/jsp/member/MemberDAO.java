package com.jsp.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	
	private DataSource ds;
	// DataSource 객체는 Connection Pool 을 관리하는 객체
	// 이 객체는 JNDI (Java Naming Directory Interface)
	// API 를 통해서 사용한다.
	// JNDI : "이름"을 가지고 데이터베이스 "정보"를 얻을 수 있는 API
	

	// DAO : Data Access Object
	// 데이터베이스의 DAta에 접근하여
	// CRUD 를 처리하는 객체
	
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
//	private String driver = "oracle.jdbc.OracleDriver";
//	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	private String uid = "C##JSPUSER";
//	private String upw = "jsp123";
	
	// 싱글톤 : 단 하나의 객체만 생성하는 것.
	private MemberDAO() {
		
		try {
			
			Context context = new InitialContext();
			// Context : JNDI 서비스를 제공하는 객체
			
			ds = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	// 싱글톤을 사용하는 이유
	// 고정된 메모리 영역을 얻으면서 한번의 new 로 인스턴스를 사용하기 때문에
	// 메모리 낭비를 방지할 수 있다.
	
	private void close(Connection conn) {
		
		try {
			
			if(conn != null) {
				conn.close();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private void close(PreparedStatement pstmt) {
		
		try {
			
			if(pstmt != null) {
				pstmt.close();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private void close(ResultSet rs) {
		
		try {
			
			if(rs != null) {
				rs.close();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	// 회원가입 > 로그인 > 로그아웃 > 회원수정 > 회원삭제
	
	// 회원가입후에 회원의 데이터를 DB에 넣어주는 기능의 메소드
	public int memberInsert(MemberDTO dto) {
		int result = 0;
		String query = "INSERT INTO MEMBER(ID, PW, NAME, EMAIL, ADDRESS, ) " + "VALUES(?, ?, ?, ?, ?)";
		try {
			
//			Class.forName(driver);
//			conn = DriverManager.getConnection(url, uid, upw);
			
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getAddress());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(conn);
			close(pstmt);
			
		}
		
		return result;
		
	}
	
	// 같은 아이디가 있는지 체크해주는 기능의 메소드
	public boolean idCheck(String id) {
		boolean idCheck = false;
		String query = "SELECT ID FROM MEMBER WHERE ID = ?";
		
		// 아이디가 있으면 TRUE 반환, 없으면 FALSE 반환
		try {
			
//			Class.forName(driver);
//			conn = DriverManager.getConnection(url, uid, upw);
			
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				idCheck = true; // 같은 아이디가 있는경우
			}else {
				idCheck = false; // 같은 아이디가 없는경우
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				
				close(rs);
				close(conn);
				close(pstmt);
				
			}catch(Exception e2) {}
			
		}
		
		
		return idCheck;
		
	}
	
	// 로그인시 아이디와 비밀번호가 맞는지 체크해주는 기능의 메소드
	// 1. 아이디가 틀린경우 : -1
	// 2. 아이디가 맞는경우 > 비밀번호가 틀린경우 : 0
	// 3. 아이디가 맞는경우 > 비밀번호가 맞는경우 : 1
	public int loginCheck(String id, String pw) {
		int result = 0;
		String query = "SELECT PW FROM MEMBER WHERE ID = ?";
		
		try {
			
//			Class.forName(driver);
//			conn = DriverManager.getConnection(url, uid, upw);
			

			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) { // 아이디가 맞는 경우
				
				String dbPw = rs.getString("PW");
				
				if(dbPw.equals(pw)) { // 비밀번호가 맞는경우
					result = 1;
				}else { // 비밀번호가 틀린경우
					result = 0;
				}
				
			}else { // 아이디가 틀린 경우
				result = -1;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(rs);
			close(conn);
			close(pstmt);
			
		}
		
		
		return result;
	}
	
	// 해당 회원의 모든 정보를 얻는 기능의 메소드
	public MemberDTO getMember(String id) {
		MemberDTO dto = null;
		
		String query = "SELECT * FROM MEMBER WHERE ID = ?";
		
		try {
			
//			Class.forName(driver);
//			conn = DriverManager.getConnection(url, uid, upw);
			

			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(query);
			
			rs = pstmt.executeQuery();
			
//			ID	VARCHAR2(50 BYTE)
//			PW	VARCHAR2(50 BYTE)
//			NAME	NVARCHAR2(50 CHAR)
//			EMAIL	VARCHAR2(50 BYTE)
//			ADDRESS	NVARCHAR2(100 CHAR)
//			REGDATE	TIMESTAMP(6)
			
			if(rs.next()) {
				
				id = rs.getString("ID");
				String pw = rs.getString("PW");
				String name = rs.getString("NAME");
				String email = rs.getString("EMAIL");
				String address = rs.getString("ADDRESS");
				Timestamp regDate = rs.getTimestamp("REGDATE");
				
				dto = new MemberDTO(id, pw, name, email, address, regDate);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(rs);
			close(conn);
			close(pstmt);
			
		}
		
		return dto;
	}
	
	// 해당 회원의 정보를 수정해주는 기능의 메소드
	// pw, email, address
	public int updateMember(MemberDTO dto) {
		
		int result = 0;
		
		String query = "SELECT MEMBER SET PW= = ?, EMAIL = ?, ADDRESS = ?" + "WHERE ID = ?";
		
		try {
			
//			Class.forName(driver);
//			conn = DriverManager.getConnection(url, uid, upw);

			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getAddress());
			pstmt.setString(4, dto.getId());
			
			result = pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(conn);
			close(pstmt);
			
		}
		
		
		return result;
	}
	
	
	// 해당 회원을 삭제해주는 기능의 메소드
	public int deleteMember(String id) {
		int result = 0;
		String query = "DELETE FROM MEMBER WHERE ID = ?";
		
		try {
			
//			Class.forName(driver);
//			conn = DriverManager.getConnection(url, uid, upw);

			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			
			
			result = pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(conn);
			close(pstmt);
			
		}
		
		
		
		return result;
	}
	
	
}
