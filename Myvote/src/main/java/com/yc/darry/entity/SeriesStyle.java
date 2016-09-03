package com.yc.darry.entity;

public class SeriesStyle {
	private Integer ssid;
	private Integer seriesid;
	private Integer styleid;

	public SeriesStyle() {
		super();
	}

	public SeriesStyle(Integer ssid, Integer seriesid, Integer styleid) {
		super();
		this.ssid = ssid;
		this.seriesid = seriesid;
		this.styleid = styleid;
	}

	public Integer getSsid() {
		return ssid;
	}

	public void setSsid(Integer ssid) {
		this.ssid = ssid;
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

	@Override
	public String toString() {
		return "SeriesStyle [ssid=" + ssid + ", seriesid=" + seriesid + ", styleid=" + styleid + "]";
	}

}
