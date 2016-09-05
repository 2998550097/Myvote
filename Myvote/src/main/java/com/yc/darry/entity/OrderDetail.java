package com.yc.darry.entity;

public class OrderDetail {
	private Integer orderdetailId;
	private String orderid;
	private Integer goodid;
	public OrderDetail(Integer orderdetailId, String orderid, Integer goodid) {
		super();
		this.orderdetailId = orderdetailId;
		this.orderid = orderid;
		this.goodid = goodid;
	}
	public OrderDetail() {
		super();
	}
	public Integer getOrderdetailId() {
		return orderdetailId;
	}
	public void setOrderdetailId(Integer orderdetailId) {
		this.orderdetailId = orderdetailId;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public Integer getGoodId() {
		return goodid;
	}
	public void setGoodid(Integer goodid) {
		this.goodid = goodid;
	}
	@Override
	public String toString() {
		return "OrderDetail [orderdetailId=" + orderdetailId + ", orderid=" + orderid + ", goodid=" + goodid + "]";
	}
	
	
}
