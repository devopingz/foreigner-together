package handler.recruit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import recruit.MyRecruit;
import recruit.MyRecruitService;
import handler.Handler;

public class ViewHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = null;
		if(request.getMethod().equals("GET")) {
			int num = Integer.parseInt(request.getParameter("num"));
			MyRecruitService service = new MyRecruitService();
			MyRecruit MyRecruit = service.getMyRecruit(num);
			request.setAttribute("r", MyRecruit);
			view = "/recruit/view.jsp";
		}else {
			
		}
		return view;
	}

}
