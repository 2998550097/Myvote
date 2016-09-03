package com.yc.darry.entity;

public class Store {
	private Integer storeid;
	private String sname;
	private String saddress;
	private Integer sappointcount;
	private String simagelogo;
	private String sstarttime; // 开业时间
	private String sendtime; // 结束时间
	
	
	
	public Store() {
	}
	
	public Store(Integer storeid, String sname, String saddress, Integer sappointcount, String simagelogo,
			String sstarttime, String sendtime) {
		this.storeid = storeid;
		this.sname = sname;
		this.saddress = saddress;
		this.sappointcount = sappointcount;
		this.simagelogo = simagelogo;
		this.sstarttime = sstarttime;
		this.sendtime = sendtime;
	}
	public Store( String sname, String saddress, Integer sappointcount, String simagelogo,
			String sstarttime, String sendtime) {
		this.sname = sname;
		this.saddress = saddress;
		this.sappointcount = sappointcount;
		this.simagelogo = simagelogo;
		this.sstarttime = sstarttime;
		this.sendtime = sendtime;
	}
	public Integer getStoreid() {
		return storeid;
	}
	public void setStoreid(Integer storeid) {
		this.storeid = storeid;
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
	public Integer getSappointcount() {
		return sappointcount;
	}
	public void setSappointcount(Integer sappointcount) {
		this.sappointcount = sappointcount;
	}
	public String getSimagelogo() {
		return simagelogo;
	}
	public void setSimagelogo(String simagelogo) {
		this.simagelogo = simagelogo;
	}
	public String getSstarttime() {
		return sstarttime;
	}
	public void setSstarttime(String sstarttime) {
		this.sstarttime = sstarttime;
	}
	public String getSendtime() {
		return sendtime;
	}
	public void setSendtime(String sendtime) {
		this.sendtime = sendtime;
	}

	@Override
	public String toString() {
		return "Store [storeid=" + storeid + ", sname=" + sname + ", saddress=" + saddress + ", sappointcount="
				+ sappointcount + ", simagelogo=" + simagelogo + ", sstarttime=" + sstarttime + ", sendtime=" + sendtime
				+ "]";
	}

	
}
