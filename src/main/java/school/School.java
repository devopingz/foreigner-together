package school;

import java.sql.Date;

public class School {

	private String SCHUL_NM;
	private String ENG_SCHUL_NM;
	private String JU_ORG_NM;
	private String ORG_RDNZC;
	private String ORG_RDNMA;
	private String ORG_TELNO;
	private String HMPG_ADRES;
	private String ORG_FAXNO;
	private String COEDU_SC_NM;
	private String FOND_YMD;

	public School() {

	}

	public School(String sCHUL_NM, String eNG_SCHUL_NM, String jU_ORG_NM, String oRG_RDNZC, String oRG_RDNMA,
			String oRG_TELNO, String hMPG_ADRES, String oRG_FAXNO, String cOEDU_SC_NM, String fOND_YMD) {

		SCHUL_NM = sCHUL_NM;
		ENG_SCHUL_NM = eNG_SCHUL_NM;
		JU_ORG_NM = jU_ORG_NM;
		ORG_RDNZC = oRG_RDNZC;
		ORG_RDNMA = oRG_RDNMA;
		ORG_TELNO = oRG_TELNO;
		HMPG_ADRES = hMPG_ADRES;
		ORG_FAXNO = oRG_FAXNO;
		COEDU_SC_NM = cOEDU_SC_NM;
		FOND_YMD = fOND_YMD;
	}

	public String getSCHUL_NM() {
		return SCHUL_NM;
	}

	public void setSCHUL_NM(String sCHUL_NM) {
		SCHUL_NM = sCHUL_NM;
	}

	public String getENG_SCHUL_NM() {
		return ENG_SCHUL_NM;
	}

	public void setENG_SCHUL_NM(String eNG_SCHUL_NM) {
		ENG_SCHUL_NM = eNG_SCHUL_NM;
	}

	public String getJU_ORG_NM() {
		return JU_ORG_NM;
	}

	public void setJU_ORG_NM(String jU_ORG_NM) {
		JU_ORG_NM = jU_ORG_NM;
	}

	public String getORG_RDNZC() {
		return ORG_RDNZC;
	}

	public void setORG_RDNZC(String oRG_RDNZC) {
		ORG_RDNZC = oRG_RDNZC;
	}

	public String getORG_RDNMA() {
		return ORG_RDNMA;
	}

	public void setORG_RDNMA(String oRG_RDNMA) {
		ORG_RDNMA = oRG_RDNMA;
	}

	public String getORG_TELNO() {
		return ORG_TELNO;
	}

	public void setORG_TELNO(String oRG_TELNO) {
		ORG_TELNO = oRG_TELNO;
	}

	public String getHMPG_ADRES() {
		return HMPG_ADRES;
	}

	public void setHMPG_ADRES(String hMPG_ADRES) {
		HMPG_ADRES = hMPG_ADRES;
	}

	public String getORG_FAXNO() {
		return ORG_FAXNO;
	}

	public void setORG_FAXNO(String oRG_FAXNO) {
		ORG_FAXNO = oRG_FAXNO;
	}

	public String getCOEDU_SC_NM() {
		return COEDU_SC_NM;
	}

	public void setCOEDU_SC_NM(String cOEDU_SC_NM) {
		COEDU_SC_NM = cOEDU_SC_NM;
	}

	public String getFOND_YMD() {
		return FOND_YMD;
	}

	public void setFOND_YMD(String fOND_YMD) {
		FOND_YMD = fOND_YMD;
	}

}
