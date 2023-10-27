package handler.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.Handler;
import User.User;
import User.UserService;

public class JoinHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = "/main.jsp";
		if (request.getMethod().equals("GET")) {// get 방식 처리
			view = "/user/join.jsp";
		} else {// post 방식 처리
			String id = request.getParameter("userID");
			String pwd = request.getParameter("userPassword");
			String name = request.getParameter("userName");
			String phoneNum = request.getParameter("phoneNum");
			String email = request.getParameter("userEmail");
			String gender = request.getParameter("userGender");
			UserService service = new UserService();
			service.addUser(new User(id, pwd, name, gender,phoneNum ,email));
			view = "redirect:/main.jsp";
		}
		return view;
	}

}
