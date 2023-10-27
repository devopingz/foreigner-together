package handler.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.Handler;
import bbs.Bbs;
import bbs.BbsService;

public class ListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = null;
		
		if(request.getMethod().equals("GET")) {
			BbsService service = new BbsService();
			ArrayList<Bbs> list= service.getAll();
			request.setAttribute("list", list);
			view ="/board/bbs.jsp";
					
		}else {
			
		}
		return view;
	}

}
