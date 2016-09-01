package com.yc.darry.entity;

public class SeriesStyle {
	private Integer ssId;
	private Integer seriesId;
	private Integer styleId;

	public SeriesStyle(Integer ssId, Integer seriesId, Integer styleId) {
		super();
		this.ssId = ssId;
		this.seriesId = seriesId;
		this.styleId = styleId;
	}

	public SeriesStyle() {
		super();
	}

	public Integer getSsId() {
		return ssId;
	}

	public void setSsId(Integer ssId) {
		this.ssId = ssId;
	}

	public Integer getSeriesId() {
		return seriesId;
	}

	public void setSeriesId(Integer seriesId) {
		this.seriesId = seriesId;
	}

	public Integer getStyleId() {
		return styleId;
	}

	public void setStyleId(Integer styleId) {
		this.styleId = styleId;
	}

	@Override
	public String toString() {
		return "SeriesStyle [ssId=" + ssId + ", seriesId=" + seriesId + ", styleId=" + styleId + "]";
	}

}
