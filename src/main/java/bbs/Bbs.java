package bbs;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;


public class Bbs {
	private int bbsID;
	private String bbsTitle;
	private String userID;
	private Date bbsDate;
	private String bbsContent;
	private String path1;
	private String path2;
	
	public Bbs() {
		super();
	}

	public Bbs(int bbsID, String bbsTitle, String userID, Date bbsDate, String bbsContent, String path1, String path2) {
		super();
		this.bbsID = bbsID;
		this.bbsTitle = bbsTitle;
		this.userID = userID;
		this.bbsDate = bbsDate;
		this.bbsContent = bbsContent;
		this.path1 = path1;
		this.path2 = path2;
	}

	public int getBbsID() {
		return bbsID;
	}

	public void setBbsID(int bbsID) {
		this.bbsID = bbsID;
	}

	public String getBbsTitle() {
		return bbsTitle;
	}

	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public Date getBbsDate() {
		return bbsDate;
	}

	public void setBbsDate(Date bbsDate) {
		this.bbsDate = bbsDate;
	}

	public String getBbsContent() {
		return bbsContent;
	}

	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}

	public String getPath1() {
		return path1;
	}

	public void setPath1(String path1) {
		this.path1 = path1;
	}

	public String getPath2() {
		return path2;
	}

	public void setPath2(String path2) {
		this.path2 = path2;
	}

	@Override
	public String toString() {
		return "Bbs [bbsID=" + bbsID + ", bbsTitle=" + bbsTitle + ", userID=" + userID + ", bbsDate=" + bbsDate
				+ ", bbsContent=" + bbsContent + ", path1=" + path1 + ", path2=" + path2 + "]";
	}
	
	

	

	
}