package com.mvc.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ContentViewCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String boardID = request.getParameter("boardID");
		
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO dto = dao.contentView(Integer.parseInt(boardID));
		
		request.setAttribute("content", dto);
		
		return "board/contentView.jsp";
	}

}
