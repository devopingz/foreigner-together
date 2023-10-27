package recruit;

import java.sql.Date;

public class Recruit {

	private int num;
	private String TITL_NM;
	private String CONT;
	private String WRIT_NM;
	private String LANG_GB;
	private String REG_DT;
	private String UPD_DT;

	public Recruit() {

	}

	public Recruit(int num, String tITL_NM, String cONT, String wRIT_NM, String lANG_GB, String rEG_DT, String uPD_DT) {

		this.num = num;
		TITL_NM = tITL_NM;
		CONT = cONT;
		WRIT_NM = wRIT_NM;
		LANG_GB = lANG_GB;
		REG_DT = rEG_DT;
		UPD_DT = uPD_DT;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTITL_NM() {
		return TITL_NM;
	}

	public void setTITL_NM(String tITL_NM) {
		TITL_NM = tITL_NM;
	}

	public String getCONT() {
		return CONT;
	}

	public void setCONT(String cONT) {
		CONT = cONT;
	}

	public String getWRIT_NM() {
		return WRIT_NM;
	}

	public void setWRIT_NM(String wRIT_NM) {
		WRIT_NM = wRIT_NM;
	}

	public String getLANG_GB() {
		return LANG_GB;
	}

	public void setLANG_GB(String lANG_GB) {
		LANG_GB = lANG_GB;
	}

	public String getREG_DT() {
		return REG_DT;
	}

	public void setREG_DT(String rEG_DT) {
		REG_DT = rEG_DT;
	}

	public String getUPD_DT() {
		return UPD_DT;
	}

	public void setUPD_DT(String uPD_DT) {
		UPD_DT = uPD_DT;
	}

}
