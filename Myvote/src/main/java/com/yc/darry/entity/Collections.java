package com.yc.darry.entity;

public class Collections {
	private Integer collectionId;
	private Integer userId;
	private Integer goodId;
	private String ctime;
	private String gname;
	private String seriesname;
	private String stylename;
	private String gmaterial;
	private String gimage;
	private Integer gprice;
	private double averagescore;
	private int goodnum;
	
	public Collections(Integer collectionId, Integer userId, Integer goodId, String ctime) {
		this.collectionId = collectionId;
		this.userId = userId;
		this.goodId = goodId;
		this.ctime = ctime;
	}
	
	public Collections() {
	}

	public Integer getCollectionId() {
		return collectionId;
	}

	public void setCollectionId(Integer collectionId) {
		this.collectionId = collectionId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public String getCtime() {
		return ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getSeriesname() {
		return seriesname;
	}

	public void setSeriesname(String seriesname) {
		this.seriesname = seriesname;
	}

	public String getStylename() {
		return stylename;
	}

	public void setStylename(String stylename) {
		this.stylename = stylename;
	}

	public String getGmaterial() {
		return gmaterial;
	}

	public void setGmaterial(String gmaterial) {
		this.gmaterial = gmaterial;
	}

	public String getGimage() {
		return gimage;
	}

	public void setGimage(String gimage) {
		this.gimage = gimage;
	}

	public Integer getGprice() {
		return gprice;
	}

	public void setGprice(Integer gprice) {
		this.gprice = gprice;
	}

	public double getAveragescore() {
		return averagescore;
	}

	public void setAveragescore(double averagescore) {
		this.averagescore = averagescore;
	}

	public int getGoodnum() {
		return goodnum;
	}

	public void setGoodnum(int goodnum) {
		this.goodnum = goodnum;
	}

	@Override
	public String toString() {
		return "Collections [collectionId=" + collectionId + ", userId=" + userId + ", goodId=" + goodId + ", ctime="
				+ ctime + ", gname=" + gname + ", seriesname=" + seriesname + ", stylename=" + stylename
				+ ", gmaterial=" + gmaterial + ", gimage=" + gimage + ", gprice=" + gprice + ", averagescore="
				+ averagescore + ", goodnum=" + goodnum + "]";
	}

	public Collections(Integer collectionId, Integer userId, Integer goodId, String ctime, String gname,
			String seriesname, String stylename, String gmaterial, String gimage, Integer gprice, double averagescore,
			int goodnum) {
		super();
		this.collectionId = collectionId;
		this.userId = userId;
		this.goodId = goodId;
		this.ctime = ctime;
		this.gname = gname;
		this.seriesname = seriesname;
		this.stylename = stylename;
		this.gmaterial = gmaterial;
		this.gimage = gimage;
		this.gprice = gprice;
		this.averagescore = averagescore;
		this.goodnum = goodnum;
	}
}
