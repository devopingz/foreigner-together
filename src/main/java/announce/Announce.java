package announce;

import java.sql.Date;

public class Announce {

	private int num;
	private String title;
	private String content;
	private String writer;
	private String lang;
	private String wdate;
	private String udate;

	public Announce() {

	}

	public Announce(int num, String title, String content, String writer, String lang, String wdate, String udate) {

		this.num = num;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.lang = lang;
		this.wdate = wdate;
		this.udate = udate;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public String getUdate() {
		return udate;
	}

	public void setUdate(String udate) {
		this.udate = udate;
	}

}
