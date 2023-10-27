package handler.board;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import bbs.Bbs;
import bbs.BbsService;
import handler.Handler;

public class WriteHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view;
		if (request.getMethod().equals("GET")) {// get 방식 처리
			view = "/board/write.jsp";
		} else {// post 방식 처리
			System.out.println("write post 접속");
			MultipartRequest req;
			try {
				req = new MultipartRequest(request, path, size, "utf-8",
						new DefaultFileRenamePolicy());
				File[] f = { req.getFile("path1"), req.getFile("path2") };
				
				
				String title = req.getParameter("bbsTitle");
				String writer = req.getParameter("userID");
				String content = req.getParameter("bbsContent");
				String[] imgs = new String[2];
				for (int i = 0; i < f.length; i++) {
					if (f[i] != null && f[i].length() != 0) {
						imgs[i] = f[i].getName();
					} else {
						imgs[i] = "";
					}
				}
				BbsService service = new BbsService();
				System.out.println("/"+ title +"/"+ writer +"/"+ content +"/"+ imgs[0] +"/"+ imgs[1]);
				service.addBbs(new Bbs(0,title,writer,new Date(0,0,0),content,imgs[0],imgs[1]));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			view = "redirect:/board/list.do";
		}
		return view;
	}
}

