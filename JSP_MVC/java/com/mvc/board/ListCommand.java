package com.mvc.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		BoardDAO dao = BoardDAO.getInstance();
		
		ArrayList<BoardDTO> list = dao.boardList();
		
		request.setAttribute("list", list);
		
		
		
		return "board/list.jsp";
	}

}
