package com.mvc.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardDTO dto = new BoardDTO();
		dto.setWriter(writer);
		dto.setTitle(title);
		dto.setContent(content);
		
		BoardDAO dao = BoardDAO.getInstance();
		
		int result = dao.boardInsert(dto);
		
		String msg = null;
		String url = null;
		
		if(result == 1) {
			msg = "글이 등록되었습니다.";
			url = "/JSP_MVC/list.do";
		}else {
			msg = "글이 등록되지 않았습니다.";
			url = "/JSP_MVC/writeForm.do";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		
		return "board/message.jsp";
		
	}

}
