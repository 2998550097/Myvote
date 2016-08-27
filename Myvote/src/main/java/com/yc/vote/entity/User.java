package com.yc.vote.entity;


public class User {
	private int vuId;
	private String vuUsername;
	private String vuPassword;
	private int vuStatus;
	private int vuVersion;
	private String vuEmail;
	
	public User() {
	}
	public User(int vuId, String vuUsername, String vuPassword, int vuStatus, int vuVersion) {
		this.vuId = vuId;
		this.vuUsername = vuUsername;
		this.vuPassword = vuPassword;
		this.vuStatus = vuStatus;
		this.vuVersion = vuVersion;
	}
	
	public User(String vuUsername, String vuPassword) {
		this.vuUsername = vuUsername;
		this.vuPassword = vuPassword;
	}
	public int getVuId() {
		return vuId;
	}
	public void setVuId(int vuId) {
		this.vuId = vuId;
	}
	public String getVuUsername() {
		return vuUsername;
	}
	public void setVuUsername(String vuUsername) {
		this.vuUsername = vuUsername;
	}
	public String getVuPassword() {
		return vuPassword;
	}
	public void setVuPassword(String vuPassword) {
		this.vuPassword = vuPassword;
	}
	public int getVuStatus() {
		return vuStatus;
	}
	public void setVuStatus(int vuStatus) {
		this.vuStatus = vuStatus;
	}
	public int getVuVersion() {
		return vuVersion;
	}
	public void setVuVersion(int vuVersion) {
		this.vuVersion = vuVersion;
	}
	@Override
	public String toString() {
		return "User [vuId=" + vuId + ", vuUsername=" + vuUsername + ", vuPassword=" + vuPassword + ", vuStatus="
				+ vuStatus + ", vuVersion=" + vuVersion + ", vuEmail=" + vuEmail + "]";
	}
	public String getVuEmail() {
		return vuEmail;
	}
	public void setVuEmail(String vuEmail) {
		this.vuEmail = vuEmail;
	}
}
