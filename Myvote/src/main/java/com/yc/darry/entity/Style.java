package com.yc.darry.entity;

public class Style {
	private Integer styleId;
	private String styleName;

	public Style(Integer styleId, String styleName) {
		super();
		this.styleId = styleId;
		this.styleName = styleName;
	}

	public Style() {
		super();
	}

	public Integer getStyleId() {
		return styleId;
	}

	public void setStyleId(Integer styleId) {
		this.styleId = styleId;
	}

	public String getStyleName() {
		return styleName;
	}

	public void setStyleName(String styleName) {
		this.styleName = styleName;
	}

	@Override
	public String toString() {
		return "Style [styleId=" + styleId + ", styleName=" + styleName + "]";
	}

}
