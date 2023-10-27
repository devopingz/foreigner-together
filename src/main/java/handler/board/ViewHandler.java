package handler.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.Bbs;
import bbs.BbsService;
import handler.Handler;

public class ViewHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = null;
		if(request.getMethod().equals("GET")) {
			int id = Integer.parseInt(request.getParameter("bbsID"));
			BbsService service = new BbsService();
			Bbs bbs = service.getBbs(id);
			request.setAttribute("bbs", bbs);
			view = "/board/view.jsp";
		}else {
			
		}
		return view;
	}

}
