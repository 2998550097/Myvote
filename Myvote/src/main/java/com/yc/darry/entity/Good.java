package com.yc.darry.entity;

public class Good {
	private Integer goodId;
	private String gname;
	private String seriesname;
	private String stylename;
	private String gmaterial;
	private String gimage;
	private Integer gprice;
	private double averagescore;
	private String gother;
	private int goodnum;
	private Integer collectionId;//收藏编号
	private String ctime; //收藏时间

	public Good() {
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

	public String getseriesname() {
		return seriesname;
	}

	public void setseriesname(String seriesname) {
		this.seriesname = seriesname;
	}

	public String getstylename() {
		return stylename;
	}

	public void setstylename(String stylename) {
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

	public String getGother() {
		return gother;
	}

	public void setGother(String gother) {
		this.gother = gother;
	}

	public int getGoodnum() {
		return goodnum;
	}

	public void setGoodnum(int goodnum) {
		this.goodnum = goodnum;
	}

	public Good(Integer goodId, String gname, String seriesname, String stylename, String gmaterial, String gimage,
			Integer gprice, double averagescore, String gother, int goodnum) {
		this.goodId = goodId;
		this.gname = gname;
		this.seriesname = seriesname;
		this.stylename = stylename;
		this.gmaterial = gmaterial;
		this.gimage = gimage;
		this.gprice = gprice;
		this.averagescore = averagescore;
		this.gother = gother;
		this.goodnum = goodnum;
	}
	
	public Good(Integer goodId, String gname, String seriesname, String stylename, String gmaterial, String gimage,
			Integer gprice, double averagescore, String gother, int goodnum, Integer collectionId, String ctime) {
		this.goodId = goodId;
		this.gname = gname;
		this.seriesname = seriesname;
		this.stylename = stylename;
		this.gmaterial = gmaterial;
		this.gimage = gimage;
		this.gprice = gprice;
		this.averagescore = averagescore;
		this.gother = gother;
		this.goodnum = goodnum;
		this.collectionId = collectionId;
		this.ctime = ctime;
	}

	@Override
	public String toString() {
		return "Good [goodId=" + goodId + ", gname=" + gname + ", seriesname=" + seriesname + ", stylename=" + stylename
				+ ", gmaterial=" + gmaterial + ", gimage=" + gimage + ", gprice=" + gprice + ", averagescore="
				+ averagescore + ", gother=" + gother + ", goodnum=" + goodnum + ", collectionId=" + collectionId
				+ ", ctime=" + ctime + "]";
	}
}
