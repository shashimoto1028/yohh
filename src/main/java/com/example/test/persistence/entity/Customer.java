package com.example.test.persistence.entity;

public class Customer {
	//とりあえず登録する分だけかく
	private String CUSTOMER_NAME_KJ;
	private String CUSTOMER_NAME_KN;
	private String CUSTOMER_BIRTHDAY;
	private String ZIP_CD;
	private String ADDRESS;
	private String TEL_NO;
	private String MAIL_ADDRESS;

	public String getCUSTOMER_NAME_KJ() {
		return CUSTOMER_NAME_KJ;
	}
	public void setCUSTOMER_NAME_KJ(String cUSTOMER_NAME_KJ) {
		CUSTOMER_NAME_KJ = cUSTOMER_NAME_KJ;
	}
	public String getCUSTOMER_NAME_KN() {
		return CUSTOMER_NAME_KN;
	}
	public void setCUSTOMER_NAME_KN(String cUSTOMER_NAME_KN) {
		CUSTOMER_NAME_KN = cUSTOMER_NAME_KN;
	}
	public String getCUSTOMER_BIRTHDAY() {
		return CUSTOMER_BIRTHDAY;
	}
	public void setCUSTOMER_BIHDAY(String cUSTOMER_BIRTHDAY) {
		CUSTOMER_BIRTHDAY = cUSTOMER_BIRTHDAY;
	}
	public String getZIP_CD() {
		return ZIP_CD;
	}
	public void setZIP_CD(String zIP_CD) {
		ZIP_CD = zIP_CD;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	public String getTEL_NO() {
		return TEL_NO;
	}
	public void setTEL_NO(String tEL_NO) {
		TEL_NO = tEL_NO;
	}
	public String getMAIL_ADDRESS() {
		return MAIL_ADDRESS;
	}
	public void setMAIL_ADDRESS(String mAIL_ADDRESS) {
		MAIL_ADDRESS = mAIL_ADDRESS;
	}

}
