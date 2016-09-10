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
	private List<Paramter> paramters;
	
	
	
	public Good() {
	}
	public Good(Integer goodid, String gname, String gmaterial, String gimage, double averagescore, String gother,
			int goodnum, int usercount, int comcount, List<Paramter> paramters) {
		this.goodid = goodid;
		this.gname = gname;
		this.gmaterial = gmaterial;
		this.gimage = gimage;
		this.averagescore = averagescore;
		this.gother = gother;
		this.goodnum = goodnum;
		this.usercount = usercount;
		this.comcount = comcount;
		this.paramters = paramters;
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
	@Override
	public String toString() {
		return "Good [goodid=" + goodid + ", gname=" + gname + ", gmaterial=" + gmaterial + ", gimage=" + gimage
				+ ", averagescore=" + averagescore + ", gother=" + gother + ", goodnum=" + goodnum + ", usercount="
				+ usercount + ", comcount=" + comcount + ", paramters=" + paramters + "]";
	}

	
}
