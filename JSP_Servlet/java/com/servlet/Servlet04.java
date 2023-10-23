package com.servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/student")
public class Servlet04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		// request 객체로 넘어온 파라미터 해당 변수에 저장하기
		// response 객체로 넘어온 데이터 웹브라우저에 출력하기
		// studentID, name, age, major [radio], circle [checkbox]
		
		request.setCharacterEncoding("UTF-8");
		
		String studentID = request.getParameter("studentID");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String major = request.getParameter("major");
		
		String[] circle = request.getParameterValues("circle");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");w
		
		PrintWriter out = response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Student Info</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("학번 : " + studentID + "<br>");
		out.print("이름 : " + name + "<br>");
		out.print("나이 : " + age + "<br>");
		out.print("전공 : " + major + "<br>");
		out.print("동아리 : " + Arrays.toString(circle) + "<br>");
		out.print("</body>");
		out.print("</html>");
		
		out.close();
	}

}
