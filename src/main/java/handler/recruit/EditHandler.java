package handler.recruit;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import recruit.MyRecruit;
import recruit.MyRecruitService;
import handler.Handler;

public class EditHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = null;
		if(request.getMethod().equals("GET")) {
			int num = Integer.parseInt(request.getParameter("num"));
			MyRecruitService service = new MyRecruitService();
			MyRecruit MyRecruit = service.getMyRecruit(num);
			request.setAttribute("r", MyRecruit);
			view = "/recruit/update.jsp";
		}else {
			int num = Integer.parseInt(request.getParameter("num"));
			String content = request.getParameter("content");
			String degree = request.getParameter("degree");
			String exp = request.getParameter("exp");
			MyRecruitService service = new MyRecruitService();
			MyRecruit r = service.getMyRecruit(num);
			service.editMyRecruit(new MyRecruit(num,r.getTitle(),content,r.getName(),r.getGender(),r.getPhonenum(),degree,exp,r.getImg(),r.getUserid()));
			view="redirect:/recruit/view.do?num="+num;
		}
		return view;
	}

}
