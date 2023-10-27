package handler.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.BbsService;
import handler.Handler;

public class DeleteHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = null;
		
		if(request.getMethod().equals("GET")) {
			int num = Integer.parseInt(request.getParameter("bbsID"));
			BbsService service = new BbsService();
			service.delBbs(num);
			view = "redirect:/board/list.do";
		}else {
			
		}
		return view;
	}

}
