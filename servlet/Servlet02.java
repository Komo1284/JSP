package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/getPost")
public class Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("doGet 메소드 입니다.");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("넘어온 아이디 : " + id);
		System.out.println("넘어온 비밀번호 : " + pw);
		
		// response 객체를 사용하여 넘어온 아이디와 비밀번호 값을
		// 웹브라우저에 출력하기
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>아이디, 비밀번호</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h2>아이디와 비밀번호 정보보기</h2>");
		out.print("아이디 : " + id + "<br>");
		out.print("비밀번호 : " + pw + "<br>");
		out.print("</body>");
		out.print("</html>");
		
		out.close();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("doPost 메소드 입니다.");
		
		request.setCharacterEncoding("UTF-8");
		// POST 방식의 요청 한글처리
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("넘어온 아이디 : " + id);
		System.out.println("넘어온 비밀번호 : " + pw);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>아이디, 비밀번호</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h2>아이디와 비밀번호 정보보기</h2>");
		out.print("아이디 : " + id + "<br>");
		out.print("비밀번호 : " + pw + "<br>");
		out.print("</body>");
		out.print("</html>");
		
		out.close();
	}

}
