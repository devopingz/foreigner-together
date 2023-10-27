package handler.user;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import handler.Handler;
import User.UserService;
import User.User;
import User.UserService;

public class LogoutHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String view = "/main.jsp";		
		HttpSession session = request.getSession(false);
		session.invalidate();
		view = "redirect:/main.jsp";
		return view;
	}
	
}
