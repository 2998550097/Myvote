package com.yc.darry.entity;

public class Good {
	private Integer goodId;
	private String gname;
	private Integer seriesId;
	private Integer styleId;
	private String gmaterial;
	private String gimage;
	private Integer gprice;
	private double averagescore;
	private String gother;
	private Integer goodnum;
	private Integer usercount;
	private Integer comcount;
	

	public Good() {
		super();
	}

	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public Integer getSeriesId() {
		return seriesId;
	}

	public void setSeriesId(Integer seriesId) {
		this.seriesId = seriesId;
	}

	public Integer getStyleId() {
		return styleId;
	}

	public void setStyleId(Integer styleId) {
		this.styleId = styleId;
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

	public String getGother() {
		return gother;
	}

	public void setGother(String gother) {
		this.gother = gother;
	}

	public Integer getUsercount() {
		return usercount;
	}

	public void setUsercount(Integer usercount) {
		this.usercount = usercount;
	}

	public Integer getComcount() {
		return comcount;
	}

	public void setComcount(Integer comcount) {
		this.comcount = comcount;
	}

	public void setGoodnum(Integer goodnum) {
		this.goodnum = goodnum;
	}

	public Integer getGoodnum() {
		return goodnum;
	}

	public Good(Integer goodId, String gname, Integer seriesId, Integer styleId, String gmaterial, String gimage,
			Integer gprice, double averagescore, String gother, Integer goodnum, Integer usercount, Integer comcount) {
		super();
		this.goodId = goodId;
		this.gname = gname;
		this.seriesId = seriesId;
		this.styleId = styleId;
		this.gmaterial = gmaterial;
		this.gimage = gimage;
		this.gprice = gprice;
		this.averagescore = averagescore;
		this.gother = gother;
		this.goodnum = goodnum;
		this.usercount = usercount;
		this.comcount = comcount;
	}

	@Override
	public String toString() {
		return "Good [goodId=" + goodId + ", gname=" + gname + ", seriesId=" + seriesId + ", styleId=" + styleId
				+ ", gmaterial=" + gmaterial + ", gimage=" + gimage + ", gprice=" + gprice + ", averagescore="
				+ averagescore + ", gother=" + gother + ", goodnum=" + goodnum + ", usercount=" + usercount
				+ ", comcount=" + comcount + "]";
	}
}
