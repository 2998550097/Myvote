package com.yc.darry.entity;

import java.util.List;

public class Good {
	private Integer goodid;
	private String gname;
	private String gmaterial;
	private String gimage;
	private double averagescore;
	private String gother;
	private int goodnum;
	private int usercount;
	private int comcount;
	private String seriesname;
	private String stylename;
	private int gprice;
	private String pcarat;
	private Integer psize;
	private String gcrystal;
	private String gcutting;
	private Integer pprice;
	private Integer pcount;
	private Integer paramterid;
	private List<Paramter> paramters;

	

	public Good(Integer goodid, String gname, String gmaterial, String gimage, double averagescore, String gother,
			int goodnum, int usercount, int comcount, int gprice) {
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
		this.gprice = gprice;
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

	public List<Paramter> getParamters() {
		return paramters;
	}

	public void setParamters(List<Paramter> paramters) {
		this.paramters = paramters;
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

	public int getGprice() {
		return gprice;
	}

	public void setGprice(int gprice) {
		this.gprice = gprice;
	}

	public String getPcarat() {
		return pcarat;
	}

	public void setPcarat(String pcarat) {
		this.pcarat = pcarat;
	}

	public Integer getPsize() {
		return psize;
	}

	public void setPsize(Integer psize) {
		this.psize = psize;
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

	public Integer getPprice() {
		return pprice;
	}

	public void setPprice(Integer pprice) {
		this.pprice = pprice;
	}

	public Integer getPcount() {
		return pcount;
	}

	public void setPcount(Integer pcount) {
		this.pcount = pcount;
	}

	public Integer getParamterid() {
		return paramterid;
	}

	public void setParamterid(Integer paramterid) {
		this.paramterid = paramterid;
	}

	@Override
	public String toString() {
		return "Good [goodid=" + goodid + ", gname=" + gname + ", gmaterial=" + gmaterial + ", gimage=" + gimage
				+ ", averagescore=" + averagescore + ", gother=" + gother + ", goodnum=" + goodnum + ", usercount="
				+ usercount + ", comcount=" + comcount + ", seriesname=" + seriesname + ", stylename=" + stylename
				+ ", gprice=" + gprice + ", pcarat=" + pcarat + ", psize=" + psize + ", gcrystal=" + gcrystal
				+ ", gcutting=" + gcutting + ", pprice=" + pprice + ", pcount=" + pcount + ", paramterid=" + paramterid
				+ ", paramters=" + paramters + "]";
	}

	public Good(Integer goodid, String gname, String gmaterial, String gimage, double averagescore, String gother,
			int goodnum, int usercount, int comcount, String seriesname, String stylename, int gprice, String pcarat,
			Integer psize, String gcrystal, String gcutting, Integer pprice, Integer pcount, Integer paramterid,
			List<Paramter> paramters) {
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
		this.seriesname = seriesname;
		this.stylename = stylename;
		this.gprice = gprice;
		this.pcarat = pcarat;
		this.psize = psize;
		this.gcrystal = gcrystal;
		this.gcutting = gcutting;
		this.pprice = pprice;
		this.pcount = pcount;
		this.paramterid = paramterid;
		this.paramters = paramters;
	}
}
