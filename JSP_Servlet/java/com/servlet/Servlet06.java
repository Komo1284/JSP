package com.servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/student2")
public class Servlet06 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		Enumeration<String> e = request.getParameterNames();
		// getParameterNames : 넘어오는 파라미터의 이름들의 목록을
		// 					   Enumeration 타입으로 반환한다.
		// Enumeration 은 컬렉션프레임워크가 만들어지기 전
		// Iterator 의 이전 버전이다.
		
		// hasMoreElements : 읽어올 요소가 있는지 확인 후 true / false 반환
		// nextElement : 다음 요소를 읽어온다.
		
		while(e.hasMoreElements()) {
			
			String name = e.nextElement();
			
			String[] values = request.getParameterValues(name);
			
			for(String value : values) {
				System.out.println("이름 : " + name + " | 값 : " + value);
			}
		}
		
	}

}
