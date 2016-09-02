package com.yc.darry.entity;

public class Store {
	private Integer storeId;
	private String sname;
	private String saddress;
	private Integer sappointcount;
	private String simagelogo;
	private String sstarttime; // 开业时间
	private String sendtime; // 结束时间

	public Store(Integer storeId, String sname, String saddress, Integer sappointcount, String simagelogo,
			String sstarttime, String sendtime) {
		this.storeId = storeId;
		this.sname = sname;
		this.saddress = saddress;
		this.sappointcount = sappointcount;
		this.simagelogo = simagelogo;
		this.sstarttime = sstarttime;
		this.sendtime = sendtime;
	}

	public Store() {
		super();
	}

	public Integer getStoreId() {
		return storeId;
	}

	public void setStoreId(Integer storeId) {
		this.storeId = storeId;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSaddress() {
		return saddress;
	}

	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}

	public Integer getsappointcount() {
		return sappointcount;
	}

	public void setsappointcount(Integer sappointcount) {
		this.sappointcount = sappointcount;
	}

	public String getsimagelogo() {
		return simagelogo;
	}

	public void setsimagelogo(String simagelogo) {
		this.simagelogo = simagelogo;
	}

	public String getsstarttime() {
		return sstarttime;
	}

	public void setsstarttime(String sstarttime) {
		this.sstarttime = sstarttime;
	}

	public String getsendtime() {
		return sendtime;
	}

	public void setsendtime(String sendtime) {
		this.sendtime = sendtime;
	}

	@Override
	public String toString() {
		return "Store [storeId=" + storeId + ", sname=" + sname + ", saddress=" + saddress + ", sappointcount="
				+ sappointcount + ", simagelogo=" + simagelogo + ", sstarttime=" + sstarttime + ", sendtime=" + sendtime
				+ "]";
	}
}
