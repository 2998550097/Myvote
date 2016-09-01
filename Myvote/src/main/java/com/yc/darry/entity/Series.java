package com.yc.darry.entity;

public class Series {

	private Integer seriesId;
	private String seriesName;

	public Series(Integer seriesId, String seriesName) {
		super();
		this.seriesId = seriesId;
		this.seriesName = seriesName;
	}

	public Series() {
		super();
	}

	public Integer getSeriesId() {
		return seriesId;
	}

	public void setSeriesId(Integer seriesId) {
		this.seriesId = seriesId;
	}

	public String getSeriesName() {
		return seriesName;
	}

	public void setSeriesName(String seriesName) {
		this.seriesName = seriesName;
	}

	@Override
	public String toString() {
		return "Series [seriesId=" + seriesId + ", seriesName=" + seriesName + "]";
	}

}
