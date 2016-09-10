package com.yc.darry.entity;

import java.util.List;

public class Good {
	private Integer goodid;
	private String gname;
<<<<<<< HEAD
	private String seriesname;
	private String stylename;
	private Integer ssid;
=======
>>>>>>> branch 'master' of ssh://git@github.com/2998550097/Myvote.git
	private String gmaterial;
	private String gcrystal;
	private String gcutting;
	private Integer psize;
	private String gimage;
	private double averagescore;
	private String gother;
	private int goodnum;
	private int usercount;
	private int comcount;
	private List<Paramter> paramters;

	public Good(Integer goodid, String gname, String gmaterial, String gimage, Integer gprice,
			double averagescore, String gother, int goodnum, int usercount, int comcount) {
		super();
		this.goodid = goodid;
		this.gname = gname;
		this.gmaterial = gmaterial;
		this.gimage = gimage;
		this.averagescore = averagescore;
		this.gother = gother;
		this.goodnum = goodnum;
		this.usercount = usercount;
		this.comcount = comcount;
	}
	public Good(Integer goodid, String gname, String seriesname, String stylename, Integer ssid, String gmaterial,
			String gcrystal, String gcutting, Integer psize, String gimage, Integer gprice, double averagescore,
			String gother, int goodnum, int usercount, int comcount) {
		super();
		this.goodid = goodid;
		this.gname = gname;
		this.seriesname = seriesname;
		this.stylename = stylename;
		this.ssid = ssid;
		this.gmaterial = gmaterial;
		this.gcrystal = gcrystal;
		this.gcutting = gcutting;
		this.psize = psize;
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

	public int getUsercount() {
		return usercount;
	}

	public void setUsercount(int usercount) {
		this.usercount = usercount;
	}

	public int getComcount() {
		return comcount;
	}

	public void setComcount(int comcount) {
		this.comcount = comcount;
	}

<<<<<<< HEAD

	public String getSeriesname() {
		return seriesname;
=======
	@Override
	public String toString() {
		return "\nGood [goodid=" + goodid + ", gname=" + gname + ", gmaterial=" + gmaterial
				+ ", gimage=" + gimage  + ", averagescore=" + averagescore + ", gother=" + gother
				+ ", goodnum=" + goodnum + ", usercount=" + usercount + ", comcount=" + comcount + "\n, paramters=" + paramters +"]";
	}

	public List<Paramter> getParamters() {
		return paramters;
	}

	public void setParamters(List<Paramter> paramters) {
		this.paramters = paramters;
>>>>>>> branch 'master' of ssh://git@github.com/2998550097/Myvote.git
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


	public String getGcrystal() {
		return gcrystal;
	}


	public void setGcrystal(String gcrystal) {
		this.gcrystal = gcrystal;
	}


	public String getGcutting() {
		return gcutting;
	}


	public void setGcutting(String gcutting) {
		this.gcutting = gcutting;
	}


	public Integer getPsize() {
		return psize;
	}


	public void setPsize(Integer psize) {
		this.psize = psize;
	}
	@Override
	public String toString() {
		return "Good [goodid=" + goodid + ", gname=" + gname + ", seriesname=" + seriesname + ", stylename=" + stylename
				+ ", ssid=" + ssid + ", gmaterial=" + gmaterial + ", gcrystal=" + gcrystal + ", gcutting=" + gcutting
				+ ", psize=" + psize + ", gimage=" + gimage + ", gprice=" + gprice + ", averagescore=" + averagescore
				+ ", gother=" + gother + ", goodnum=" + goodnum + ", usercount=" + usercount + ", comcount=" + comcount
				+ "]";
	}
}
