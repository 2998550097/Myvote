package com.yc.darry.entity;

public class Order {
	private Integer orderId;
	private Integer userId;
	private String oname;
	private String odetail;
	private String ophone;
	private String opostcode;
	private String oarrivalTime;
	private String ologisticsstyle;
	private String otel;
	private String ostatus;
	private String remark;

	public Order(Integer orderId, Integer userId, String oname, String odetail, String ophone, String opostcode,
			String oarrivalTime, String ologisticsstyle, String otel, String ostatus, String remark) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.oname = oname;
		this.odetail = odetail;
		this.ophone = ophone;
		this.opostcode = opostcode;
		this.oarrivalTime = oarrivalTime;
		this.ologisticsstyle = ologisticsstyle;
		this.otel = otel;
		this.ostatus = ostatus;
		this.remark = remark;
	}

	public Order() {
		super();
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getOname() {
		return oname;
	}

	public void setOname(String oname) {
		this.oname = oname;
	}

	public String getOdetail() {
		return odetail;
	}

	public void setOdetail(String odetail) {
		this.odetail = odetail;
	}

	public String getOphone() {
		return ophone;
	}

	public void setOphone(String ophone) {
		this.ophone = ophone;
	}

	public String getOpostcode() {
		return opostcode;
	}

	public void setOpostcode(String opostcode) {
		this.opostcode = opostcode;
	}

	public String getOarrivalTime() {
		return oarrivalTime;
	}

	public void setOarrivalTime(String oarrivalTime) {
		this.oarrivalTime = oarrivalTime;
	}

	public String getOlogisticsstyle() {
		return ologisticsstyle;
	}

	public void setOlogisticsstyle(String ologisticsstyle) {
		this.ologisticsstyle = ologisticsstyle;
	}

	public String getOtel() {
		return otel;
	}

	public void setOtel(String otel) {
		this.otel = otel;
	}

	public String getOstatus() {
		return ostatus;
	}

	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", userId=" + userId + ", oname=" + oname + ", odetail=" + odetail
				+ ", ophone=" + ophone + ", opostcode=" + opostcode + ", oarrivalTime=" + oarrivalTime
				+ ", ologisticsstyle=" + ologisticsstyle + ", otel=" + otel + ", ostatus=" + ostatus + ", remark="
				+ remark + "]";
	}

}
