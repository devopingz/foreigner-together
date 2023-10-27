package handler.announce;

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

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import handler.Handler;
import announce.Announce;
import announce.AnnounceDao;
import announce.AnnounceService;

public class DetailHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String view = "/announce/detail.jsp";

		try {
			URL url = new URL(
					"http://openapi.seoul.go.kr:8088/API_KEY/json/GlobalCenterNews/1/1000");

			URLConnection conn = url.openConnection();
			InputStream in = conn.getInputStream();
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(new InputStreamReader(in));
			JSONObject res = (JSONObject) obj.get("GlobalCenterNews");
			JSONArray arr = (JSONArray) res.get("row");
			ArrayList<Announce> list = new ArrayList<>();
			int num = Integer.parseInt(request.getParameter("num"));
			JSONObject item = (JSONObject) arr.get(num - 1);
			String title = (String) item.get("TITL_NM");
			String content = (String) item.get("CONT");
			String writer = (String) item.get("WRIT_NM");
			String lang = (String) item.get("LANG_GB");
			String wdate = (String) item.get("REG_DT");
			String udate = (String) item.get("UPD_DT");

			request.setAttribute("num", num);
			request.setAttribute("title", title);
			request.setAttribute("content", content);
			request.setAttribute("writer", writer);
			request.setAttribute("lang", lang);
			request.setAttribute("wdate", wdate);
			request.setAttribute("udate", udate);
			
		} catch (MalformedURLException e) {
			throw new RuntimeException(e);
		} catch (IOException e) {
			throw new RuntimeException(e);
		} catch (org.json.simple.parser.ParseException e) {
			e.printStackTrace();
		}

		request.setAttribute("view", "/announce/list.jsp");
		return view;
	}
}
