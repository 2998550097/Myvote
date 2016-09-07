package com.yc.darry.entity;

public class OrderDetail {
	private Integer orderdetailId;
	private String orderid;
	private Integer goodid;
	private Integer odcount;
	private double discount;
	private double totalprice;

	public OrderDetail() {
		super();
	}

	public OrderDetail(Integer orderdetailId, String orderid, Integer goodid, Integer odcount, double discount,
			double totalprice) {
		super();
		this.orderdetailId = orderdetailId;
		this.orderid = orderid;
		this.goodid = goodid;
		this.odcount = odcount;
		this.discount = discount;
		this.totalprice = totalprice;
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

	public Integer getGoodid() {
		return goodid;
	}

	public void setGoodid(Integer goodid) {
		this.goodid = goodid;
	}

	public Integer getOdcount() {
		return odcount;
	}

	public void setOdcount(Integer odcount) {
		this.odcount = odcount;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	@Override
	public String toString() {
		return "OrderDetail [orderdetailId=" + orderdetailId + ", orderid=" + orderid + ", goodid=" + goodid
				+ ", odcount=" + odcount + ", discount=" + discount + ", totalprice=" + totalprice + "]";
	}

}
