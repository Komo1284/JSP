package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login2")
public class Servlet10 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		HttpSession session = request.getSession();
		
		if(id.equals("hong") && pw.equals("1234")) {
			
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/loginOK");
			// 서블릿 포워딩 기능의 객체
			
			dispatcher.forward(request, response);
			// forword 메소드를 호출할때 request, response 객체를 매개값으로 주어
			// 포워딩을 할 수 있다.
			
		}else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/loginNG");
			dispatcher.forward(request, response);
			
		}
		
	}

}
