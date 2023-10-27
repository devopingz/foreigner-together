package education;

import java.sql.Date;

public class Education {

	private int num;
	private String title;
	private String content;
	private String lang;
	private String endyn;
	private String qual;
	private String date;

	public Education() {

	}

	public Education(int num, String title, String content, String lang, String endyn, String qual, String date) {

		this.num = num;
		this.title = title;
		this.content = content;
		this.lang = lang;
		this.endyn = endyn;
		this.qual = qual;
		this.date = date;
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

	public String getEndyn() {
		return endyn;
	}

	public void setEndyn(String endyn) {
		this.endyn = endyn;
	}

	public String getQual() {
		return qual;
	}

	public void setQual(String qual) {
		this.qual = qual;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

}
