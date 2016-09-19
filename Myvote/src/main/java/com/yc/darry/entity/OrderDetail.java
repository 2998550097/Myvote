package com.yc.darry.entity;

public class OrderDetail {
	private Integer orderdetailid;
	private String orderid;
	private Integer goodid;
	private Integer odcount;
	private double discount;
	private double totalprice;
	private String odname;
	
	public OrderDetail() {
		super();
	}

	public OrderDetail(Integer orderdetailid, String orderid, Integer goodid, Integer odcount, double discount,
			double totalprice,String odname) {
		super();
		this.orderdetailid = orderdetailid;
		this.orderid = orderid;
		this.goodid = goodid;
		this.odcount = odcount;
		this.discount = discount;
		this.totalprice = totalprice;
		this.setOdname(odname);
	}

	public Integer getOrderdetailid() {
		return orderdetailid;
	}

	public void setOrderdetailid(Integer orderdetailid) {
		this.orderdetailid = orderdetailid;
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

	public String getOdname() {
		return odname;
	}

	public void setOdname(String odname) {
		this.odname = odname;
	}

	@Override
	public String toString() {
		return "OrderDetail [orderdetailid=" + orderdetailid + ", orderid=" + orderid + ", goodid=" + goodid
				+ ", odcount=" + odcount + ", discount=" + discount + ", totalprice=" + totalprice + ", odname="
				+ odname + "]";
	}

	
}
