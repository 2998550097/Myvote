package com.yc.darry.entity;

public class Style {
	private Integer styleid;
	private String stylename;
	
	public Style() {
		super();
	}
	public Style(Integer styleid, String stylename) {
		super();
		this.styleid = styleid;
		this.stylename = stylename;
	}
	public Integer getStyleid() {
		return styleid;
	}
	public void setStyleid(Integer styleid) {
		this.styleid = styleid;
	}
	public String getStylename() {
		return stylename;
	}
	public void setStylename(String stylename) {
		this.stylename = stylename;
	}
	@Override
	public String toString() {
		return "Style [styleid=" + styleid + ", stylename=" + stylename + "]";
	}
	
	
}
