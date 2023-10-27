package recruit;

import java.sql.Date;

public class MyRecruit {

	private int num;
	private String title;
	private String content;
	private String name;
	private String gender;
	private String phonenum;
	private String degree;
	private String exp;
	private String img;
	private String userid;

	public MyRecruit() {

	}

	public MyRecruit(int num, String title, String content, String name, String gender, String phonenum, String degree,
			String exp, String img, String userid) {

		this.num = num;
		this.title = title;
		this.content = content;
		this.name = name;
		this.gender = gender;
		this.phonenum = phonenum;
		this.degree = degree;
		this.exp = exp;
		this.img = img;
		this.userid = userid;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

}
