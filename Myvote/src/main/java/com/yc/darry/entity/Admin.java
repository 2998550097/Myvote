package com.yc.darry.entity;

public class Admin {
	private Integer adminId;
	private String aname;
	private String apassword;
	
	public Admin( String aname, String apassword) {
		this.aname = aname;
		this.apassword = apassword;
	}
	public Admin() {
	}
	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApassword() {
		return apassword;
	}
	public void setApassword(String apassword) {
		this.apassword = apassword;
	}
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", aname=" + aname + ", apassword=" + apassword + "]";
	}
	
}
