package com.yc.vote.entity;

public class Subject {
	private Integer vsId;
	private String vsTitle;
	private int vsType;
	private Integer userCount;
	private Integer optionCount;
	public Subject(Integer vsId, String vsTitle, int vsType) {
		this.vsId = vsId;
		this.vsTitle = vsTitle;
		this.vsType = vsType;
	}
	
	public Subject() {
	}

	public Integer getVsId() {
		return vsId;
	}

	public void setVsId(Integer vsId) {
		this.vsId = vsId;
	}

	public String getVsTitle() {
		return vsTitle;
	}

	public void setVsTitle(String vsTitle) {
		this.vsTitle = vsTitle;
	}

	
	public int getVsType() {
		return vsType;
	}

	public void setVsType(int vsType) {
		this.vsType = vsType;
	}
	
	

	public Integer getUserCount() {
		return userCount;
	}

	public void setUserCount(Integer userCount) {
		this.userCount = userCount;
	}

	public int getOptionCount() {
		return optionCount;
	}

	public void setOptionCount(Integer optionCount) {
		this.optionCount = optionCount;
	}

	@Override
	public String toString() {
		return "Subject [vsId=" + vsId + ", vsTitle=" + vsTitle + ", vsType=" + vsType + ", userCount=" + userCount +", optionCount=" + optionCount +"]";
	}
	
}
