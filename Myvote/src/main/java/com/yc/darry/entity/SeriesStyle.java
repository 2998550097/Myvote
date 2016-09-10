package com.yc.darry.entity;

public class SeriesStyle {
	private Integer seriesid;
	private Integer styleid;
	private Integer goodid;

	public SeriesStyle() {
		super();
	}

	public SeriesStyle(Integer seriesid, Integer styleid, Integer goodid) {
		super();
		this.seriesid = seriesid;
		this.styleid = styleid;
		this.goodid = goodid;
	}

	public Integer getSeriesid() {
		return seriesid;
	}

	public void setSeriesid(Integer seriesid) {
		this.seriesid = seriesid;
	}

	public Integer getStyleid() {
		return styleid;
	}

	public void setStyleid(Integer styleid) {
		this.styleid = styleid;
	}

	public Integer getGoodid() {
		return goodid;
	}

	public void setGoodid(Integer goodid) {
		this.goodid = goodid;
	}

	@Override
	public String toString() {
		return "SeriesStyle [seriesid=" + seriesid + ", styleid=" + styleid + ", goodid=" + goodid + "]";
	}

}
