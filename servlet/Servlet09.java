package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Servlet09 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		HttpSession session = request.getSession();
		
		if(id.equals("hong") && pw.equals("1234")) {
			
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			
			response.sendRedirect("/JSP_Servlet/loginOK");
			// 페이지 이동
			
		}else {
			
			response.sendRedirect("/JSP_Servlet/loginNG");
			
		}
		
		
	}

}
