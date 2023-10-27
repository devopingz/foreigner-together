package handler.board;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.Bbs;
import bbs.BbsService;
import handler.Handler;

public class EditHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = null;
		if(request.getMethod().equals("GET")) {
			int num = Integer.parseInt(request.getParameter("bbsID"));
			BbsService service = new BbsService();
			Bbs bbs = service.getBbs(num);
			request.setAttribute("bbs", bbs);
			view = "/board/update.jsp";
		}else {
			int num = Integer.parseInt(request.getParameter("bbsID"));
			String title = request.getParameter("bbsTitle");
			String content = request.getParameter("bbsContent");
			BbsService service = new BbsService();
			Bbs bbs = service.getBbs(num);
			service.editBbs(new Bbs(num,title,bbs.getUserID(),null,content,bbs.getPath1(),bbs.getPath2()));
			view="redirect:/board/view.do?bbsID="+num;
		}
		return view;
	}

}
