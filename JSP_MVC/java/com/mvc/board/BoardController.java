package com.mvc.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// .do : jsp에서 사용하는 가상의 주소
// 사용자는 파일의 실제경로를 알 수 없으므로 보안에 도움이된다.

@WebServlet("*.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String viewPage = null; // jsp 페이지 지정할 변수
		Command command = null; // 비즈니스 역할을 수행할 객체 지정할 변수
		
		// http://localhost:8090/JSP_MVC/list.do
		
		String uri = request.getRequestURI();
		// URI : /JSP_MVC/list.do
		
		String conPath = request.getContextPath();
		// contextPath : /JSP_MVC
		
		String result = uri.substring(conPath.length());
		// /list.do
		
		if(result.equals("/list.do")) { // 게시판 목록 요청
			
			command = new ListCommand();
			viewPage = command.execute(request, response);
			
		}else if(result.equals("/writeForm.do")) { // 글 작성 폼 요청
			
			viewPage = "board/writeForm.jsp";
			
		}else if(result.equals("/write.do")) { // 글 등록 요청
			
			command = new WriteCommand();
			viewPage = command.execute(request, response);
			
		}else if(result.equals("/contentView.do")) { // 제목 클릭시 해당 내용페이지 요청
			
		}else if(result.equals("/modifyForm.do")) { // 글 수정 폼 요청
			
		}else if(result.equals("/modify.do")) { // 수정 글 등록 요청
			
		}else if(result.equals("/delete.do")) { // 글 삭제 요청
			
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		// RequestDispatcher : 서블릿 포워딩 기능의 객체
		
		dispatcher.forward(request, response);
		// forward 메소드를 사용하여 request, response 객체를 jsp 페이지로 전달한다.
		
	}

}
