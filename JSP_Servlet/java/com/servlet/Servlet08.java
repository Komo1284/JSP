package com.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet08")
public class Servlet08 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext application = super.getServletContext();
		
		// 컨텍스트(웹어플리케이션) 마다 하나의 ServletContext 가 생성된다.
		// 서블릿끼리 자원(데이터)을 공유하는데 사용한다.
		
		String name = application.getInitParameter("name");
		String age = application.getInitParameter("age");
		
		System.out.println("이름 : " + name);
		System.out.println("나이 : " + age);
		
		
		
	}

}
