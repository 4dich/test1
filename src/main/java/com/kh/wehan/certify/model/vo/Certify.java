package com.kh.wehan.certify.model.vo;

import java.sql.Date;

public class Certify {

	
	private String ceId;
	private String chId;
	private String userId;
	private String ceContent;
	private String cePicture;
	private Date ceDate;
	private String ceDel;
	
	public Certify() {
		super();
	}

	public Certify(String ceId, String chId, String userId, String ceContent, String cePicture, Date ceDate,
			String ceDel) {
		super();
		this.ceId = ceId;
		this.chId = chId;
		this.userId = userId;
		this.ceContent = ceContent;
		this.cePicture = cePicture;
		this.ceDate = ceDate;
		this.ceDel = ceDel;
	}

	public String getCeId() {
		return ceId;
	}

	public void setCeId(String ceId) {
		this.ceId = ceId;
	}

	public String getChId() {
		return chId;
	}

	public void setChId(String chId) {
		this.chId = chId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCeContent() {
		return ceContent;
	}

	public void setCeContent(String ceContent) {
		this.ceContent = ceContent;
	}

	public String getCePicture() {
		return cePicture;
	}

	public void setCePicture(String cePicture) {
		this.cePicture = cePicture;
	}

	public Date getCeDate() {
		return ceDate;
	}

	public void setCeDate(Date ceDate) {
		this.ceDate = ceDate;
	}

	public String getCeDel() {
		return ceDel;
	}

	public void setCeDel(String ceDel) {
		this.ceDel = ceDel;
	}

	@Override
	public String toString() {
		return "Certify [ceId=" + ceId + ", chId=" + chId + ", userId=" + userId + ", ceContent=" + ceContent
				+ ", cePicture=" + cePicture + ", ceDate=" + ceDate + ", ceDel=" + ceDel + "]";
	}
	
	
	
}