package handler.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import handler.Handler;
import member.Member;
import member.MemberService;
import User.User;
import User.UserService;

public class IdCheckHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("userID");
		User m = (new UserService()).getUser(id);
		boolean flag = false;
		if (m == null) {
			flag = true;
		}
		JSONObject obj = new JSONObject();
		obj.put("flag", flag);
		String txt = obj.toJSONString();
		return "responsebody/" + txt;
	}
}
