package com.yc.darry.entity;

public class Good {
	private Integer goodid;
	private String gname;
	private Integer ssid;
	private String gmaterial;
	private String gimage;
	private Integer gprice;
	private double averagescore;
	private String gother;
	private Integer goodnum;
	private Integer usercount;
	private Integer comcount;

	public Good(Integer goodid, String gname, Integer ssid, String gmaterial, String gimage, Integer gprice,
			double averagescore, String gother, Integer goodnum, Integer usercount, Integer comcount) {
		super();
		this.goodid = goodid;
		this.gname = gname;
		this.ssid = ssid;
		this.gmaterial = gmaterial;
		this.gimage = gimage;
		this.gprice = gprice;
		this.averagescore = averagescore;
		this.gother = gother;
		this.goodnum = goodnum;
		this.usercount = usercount;
		this.comcount = comcount;
	}

	public Good() {
		super();
	}

	public Integer getGoodid() {
		return goodid;
	}

	public void setGoodid(Integer goodid) {
		this.goodid = goodid;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public Integer getSsid() {
		return ssid;
	}

	public void setSsid(Integer ssid) {
		this.ssid = ssid;
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

	public Integer getGoodnum() {
		return goodnum;
	}

	public void setGoodnum(Integer goodnum) {
		this.goodnum = goodnum;
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

	@Override
	public String toString() {
		return "Good [goodid=" + goodid + ", gname=" + gname + ", ssid=" + ssid + ", gmaterial=" + gmaterial
				+ ", gimage=" + gimage + ", gprice=" + gprice + ", averagescore=" + averagescore + ", gother=" + gother
				+ ", goodnum=" + goodnum + ", usercount=" + usercount + ", comcount=" + comcount + "]";
	}

}
