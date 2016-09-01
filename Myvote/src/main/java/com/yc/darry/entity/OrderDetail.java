package com.yc.darry.entity;

public class OrderDetail {
	private Integer orderdetailId;
	private String orderId;
	private Integer goodId;
	public OrderDetail(Integer orderdetailId, String orderId, Integer goodId) {
		super();
		this.orderdetailId = orderdetailId;
		this.orderId = orderId;
		this.goodId = goodId;
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
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public Integer getGoodId() {
		return goodId;
	}
	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}
	@Override
	public String toString() {
		return "OrderDetail [orderdetailId=" + orderdetailId + ", orderId=" + orderId + ", goodId=" + goodId + "]";
	}
	
	
}
