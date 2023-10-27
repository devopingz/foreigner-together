package handler.recruit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import recruit.MyRecruitService;
import handler.Handler;

public class DeleteHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = null;
		
		if(request.getMethod().equals("GET")) {
			int num = Integer.parseInt(request.getParameter("num"));
			String userID = request.getParameter("userID");
			MyRecruitService service = new MyRecruitService();
			service.delMyRecruit(num);
			view = "redirect:/recruit/mylist.do?userID="+userID;
		}else {
			
		}
		return view;
	}

}
