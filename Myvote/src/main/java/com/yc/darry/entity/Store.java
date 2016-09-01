package com.yc.darry.entity;

public class Store {
	private Integer storeId;
	private String sname;
	private String saddress;
	private Integer sappointCount;
	private String simageLogo;
	private String sstartTime; // 开业时间
	private String sendTime; // 结束时间

	public Store(Integer storeId, String sname, String saddress, Integer sappointCount, String simageLogo,
			String sstartTime, String sendTime) {
		super();
		this.storeId = storeId;
		this.sname = sname;
		this.saddress = saddress;
		this.sappointCount = sappointCount;
		this.simageLogo = simageLogo;
		this.sstartTime = sstartTime;
		this.sendTime = sendTime;
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

	public Integer getSappointCount() {
		return sappointCount;
	}

	public void setSappointCount(Integer sappointCount) {
		this.sappointCount = sappointCount;
	}

	public String getSimageLogo() {
		return simageLogo;
	}

	public void setSimageLogo(String simageLogo) {
		this.simageLogo = simageLogo;
	}

	public String getSstartTime() {
		return sstartTime;
	}

	public void setSstartTime(String sstartTime) {
		this.sstartTime = sstartTime;
	}

	public String getSendTime() {
		return sendTime;
	}

	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}

	@Override
	public String toString() {
		return "Store [storeId=" + storeId + ", sname=" + sname + ", saddress=" + saddress + ", sappointCount="
				+ sappointCount + ", simageLogo=" + simageLogo + ", sstartTime=" + sstartTime + ", sendTime=" + sendTime
				+ "]";
	}
}
