package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/param")
public class Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		// id pw name age hobby[checkbox] area
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw1");
		
		System.out.println("아이디 : " + id);
		System.out.println("비밀번호 : " + pw);
		
	}

}
