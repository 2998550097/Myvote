package com.yc.darry.entity;

public class Delivery {
	private Integer delivertyId;
	private String dname;
	private String ddetail;
	private String dtel;
	private String dpostcode;
	private String dstatus;

	public Delivery(Integer delivertyId, String dname, String ddetail, String dtel, String dpostcode, String dstatus) {
		super();
		this.delivertyId = delivertyId;
		this.dname = dname;
		this.ddetail = ddetail;
		this.dtel = dtel;
		this.dpostcode = dpostcode;
		this.dstatus = dstatus;
	}

	public Delivery() {
		super();
	}

	public Integer getDelivertyId() {
		return delivertyId;
	}

	public void setDelivertyId(Integer delivertyId) {
		this.delivertyId = delivertyId;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDdetail() {
		return ddetail;
	}

	public void setDdetail(String ddetail) {
		this.ddetail = ddetail;
	}

	public String getDtel() {
		return dtel;
	}

	public void setDtel(String dtel) {
		this.dtel = dtel;
	}

	public String getDpostcode() {
		return dpostcode;
	}

	public void setDpostcode(String dpostcode) {
		this.dpostcode = dpostcode;
	}

	public String getDstatus() {
		return dstatus;
	}

	public void setDstatus(String dstatus) {
		this.dstatus = dstatus;
	}

	@Override
	public String toString() {
		return "Delivery [delivertyId=" + delivertyId + ", dname=" + dname + ", ddetail=" + ddetail + ", dtel=" + dtel
				+ ", dpostcode=" + dpostcode + ", dstatus=" + dstatus + "]";
	}

}
