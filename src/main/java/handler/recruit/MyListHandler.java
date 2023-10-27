package handler.recruit;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.ParseException;
import java.util.ArrayList;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import recruit.MyRecruit;
import recruit.MyRecruitService;
import handler.Handler;
import recruit.Recruit;

public class MyListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String view = "/recruit/mylist.jsp";
		
		if(request.getMethod().equals("GET")) {
			MyRecruitService service = new MyRecruitService();
			String userid = request.getParameter("userID");
			ArrayList<MyRecruit> list= service.getByWriter(userid);
			request.setAttribute("list", list);
					
		}else {
			
		}
		request.setAttribute("view", "/recruit/mylist.jsp");
		return view;
	}
}
