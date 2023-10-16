package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/dan")
public class Servlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		// 넘어온 데이터를 받아서
		// 해당하는 숫자의 구구단 웹브라우저에 출력하기
		// 예) 2 >> 2단 출력
		
		String strDan = request.getParameter("dan");
		int dan = Integer.parseInt(strDan);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		
		
		if(dan < 2 || dan > 9) {
			out.print("2부터 9사이의 숫자만 입력해주세요");
			return;
		}
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<title>구구단</title>");
		out.print("</head>");
		out.print("<body>");
		
		for (int i = 1; i<=9; i++) {
			out.print("<h3>" + dan + "X" + i + "=" + (dan*i) + "</h3>");
		}
		
		out.print("</body>");
		out.print("</html>");
		out.close();
		
	}

}
