package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginOK")
public class LoginOK extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
		
		
		System.out.println("로그인 되었습니다!");
		System.out.println("입력하신 아이디 : " + id);
		System.out.println("입력하신 비밀번호 : " + pw);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
		
		
		System.out.println("로그인 되었습니다!");
		System.out.println("입력하신 아이디 : " + id);
		System.out.println("입력하신 비밀번호 : " + pw);
		
	}

}
