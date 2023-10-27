package handler.recruit;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import recruit.MyRecruit;
import recruit.MyRecruitService;
import handler.Handler;

public class WriteHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view;
		if (request.getMethod().equals("GET")) {// get 방식 처리
			view = "/recruit/write.jsp";
			String title = request.getParameter("title");
			request.setAttribute("title", title);

		} else {// post 방식 처리
			System.out.println("write post 접속");
			MultipartRequest req;
			try {
				req = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
				File[] f = { req.getFile("path1") };

				String title = req.getParameter("title");
				String name = req.getParameter("name");
				String gender = req.getParameter("gender");
				String content = req.getParameter("content");
				String phonenum = req.getParameter("phonenum");
				String degree = req.getParameter("degree");
				String exp = req.getParameter("exp");
				String userID = req.getParameter("userID");

				String[] imgs = new String[2];
				for (int i = 0; i < f.length; i++) {
					if (f[i] != null && f[i].length() != 0) {
						imgs[i] = f[i].getName();
					} else {
						imgs[i] = "";
					}
				}
				MyRecruitService service = new MyRecruitService();
				service.addMyRecruit(
						new MyRecruit(0, title, content, name, gender, phonenum, degree, exp, imgs[0], userID));
			} catch (IOException e) {
				e.printStackTrace();
			}
			view = "redirect:/recruit/list.do";
		}
		return view;
	}
}
