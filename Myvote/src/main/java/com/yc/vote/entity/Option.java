package com.yc.vote.entity;

public class Option {
	private int voId;
	private String voOption;
	private int vsId;
	private int voOrder;
	private Integer optionCount;
	
	public Option(int voId, String voOption, int vsId, int voOrder) {
		this.voId = voId;
		this.voOption = voOption;
		this.vsId = vsId;
		this.voOrder = voOrder;
	}
	public Option() {
	}
	public int getVoId() {
		return voId;
	}
	public void setVoId(int voId) {
		this.voId = voId;
	}
	public String getVoOption() {
		return voOption;
	}
	public void setVoOption(String voOption) {
		this.voOption = voOption;
	}
	public int getVsId() {
		return vsId;
	}
	public void setVsId(int vsId) {
		this.vsId = vsId;
	}
	public int getVoOrder() {
		return voOrder;
	}
	public void setVoOrder(int voOrder) {
		this.voOrder = voOrder;
	}
	public Integer getOptionCount() {
		return optionCount;
	}
	public void setOptionCount(Integer optionCount) {
		this.optionCount = optionCount;
	}
	@Override
	public String toString() {
		return "Option [voId=" + voId + ", voOption=" + voOption + ", vsId=" + vsId + ", voOrder=" + voOrder
				+ ", optionCount=" + optionCount + "]";
	}
	
}
