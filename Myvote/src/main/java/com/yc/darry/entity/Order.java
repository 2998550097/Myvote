package com.yc.darry.entity;

public class Order {
	private String orderid;
	private Integer userid;
	private String oname;
	private String odetail;
	private String ophone;
	private String opostcode;
	private String oordertime;
	private String oarrivaltime;
	private String ologisticsstyle;
	private String otel;
	private String ostatus;
	private String remark;
	private String oimage;
	private Integer odcount;
	private String odname;
	private Integer totalprice;

	public Order(String orderid, Integer userid, String oname, String odetail, String ophone, String opostcode,
			String oordertime,String oarrivaltime, String ologisticsstyle, String otel, String ostatus, String remark,String oimage) {
		super();
		this.orderid = orderid;
		this.userid = userid;
		this.oname = oname;
		this.odetail = odetail;
		this.ophone = ophone;
		this.opostcode = opostcode;
		this.oordertime = oordertime;
		this.oarrivaltime = oarrivaltime;
		this.ologisticsstyle = ologisticsstyle;
		this.otel = otel;
		this.ostatus = ostatus;
		this.remark = remark;
		this.oimage = oimage;
	}

	public Order() {
		super();
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
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

	public String getOarrivaltime() {
		return oarrivaltime;
	}

	public void setOarrivaltime(String oarrivaltime) {
		this.oarrivaltime = oarrivaltime;
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

	
	public String getOordertime() {
		return oordertime;
	}

	public void setOordertime(String oordertime) {
		this.oordertime = oordertime;
	}

	public String getOimage() {
		return oimage;
	}

	public void setOimage(String oimage) {
		this.oimage = oimage;
	}

	public Integer getOdcount() {
		return odcount;
	}

	public void setOdcount(Integer odcount) {
		this.odcount = odcount;
	}

	public String getOdname() {
		return odname;
	}

	public void setOdname(String odname) {
		this.odname = odname;
	}

	public Integer getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(Integer totalprice) {
		this.totalprice = totalprice;
	}

	@Override
	public String toString() {
		return "Order [orderid=" + orderid + ", userid=" + userid + ", oname=" + oname + ", odetail=" + odetail
				+ ", ophone=" + ophone + ", opostcode=" + opostcode + ", oordertime=" + oordertime + ", oarrivaltime="
				+ oarrivaltime + ", ologisticsstyle=" + ologisticsstyle + ", otel=" + otel + ", ostatus=" + ostatus
				+ ", remark=" + remark + ", oimage=" + oimage + ", odcount=" + odcount + ", odname=" + odname
				+ ", totalprice=" + totalprice + "]";
	}
	
}
