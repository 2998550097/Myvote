package com.yc.darry.entity;

public class Series {

	private Integer seriesid;
	private String seriesname;

	public Series() {
		super();
	}

	public Series(Integer seriesid, String seriesname) {
		super();
		this.seriesid = seriesid;
		this.seriesname = seriesname;
	}

	public Integer getSeriesid() {
		return seriesid;
	}

	public void setSeriesid(Integer seriesid) {
		this.seriesid = seriesid;
	}

	public String getSeriesname() {
		return seriesname;
	}

	public void setSeriesname(String seriesname) {
		this.seriesname = seriesname;
	}

	@Override
	public String toString() {
		return "Series [seriesid=" + seriesid + ", seriesname=" + seriesname + "]";
	}

}
