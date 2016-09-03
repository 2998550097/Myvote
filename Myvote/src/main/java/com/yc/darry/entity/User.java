package com.yc.darry.entity;

public class User {
	private Integer userId;
	private String ucardId;
	private String urealName;
	private String uname;
	private String ubirthday;
	private String usex;
	private String uaddress;
	private String utel;
	private String uemail;
	private String upassword;
	private String upostcode;
	private String ustatus;
	private String uimage;
	private String emailCode;
	public User(Integer userId, String ucardId, String urealName, String uname, String ubirthday, String usex,
			String uaddress, String utel, String uemail, String upassword, String upostcode, String ustatus,
			String uimage) {
		super();
		this.userId = userId;
		this.ucardId = ucardId;
		this.urealName = urealName;
		this.uname = uname;
		this.ubirthday = ubirthday;
		this.usex = usex;
		this.uaddress = uaddress;
		this.utel = utel;
		this.uemail = uemail;
		this.upassword = upassword;
		this.upostcode = upostcode;
		this.ustatus = ustatus;
		this.uimage = uimage;
	}
	
	
	public User(String uemail, String upassword) {
		super();
		this.uemail = uemail;
		this.upassword = upassword;
	}


	public User() {
		super();
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUcardId() {
		return ucardId;
	}
	public void setUcardId(String ucardId) {
		this.ucardId = ucardId;
	}
	public String getUrealName() {
		return urealName;
	}
	public void setUrealName(String urealName) {
		this.urealName = urealName;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUbirthday() {
		return ubirthday;
	}
	public void setUbirthday(String ubirthday) {
		this.ubirthday = ubirthday;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	public String getUtel() {
		return utel;
	}
	public void setUtel(String utel) {
		this.utel = utel;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUpostcode() {
		return upostcode;
	}
	public void setUpostcode(String upostcode) {
		this.upostcode = upostcode;
	}
	public String getUstatus() {
		return ustatus;
	}
	public void setUstatus(String ustatus) {
		this.ustatus = ustatus;
	}
	public String getUimage() {
		return uimage;
	}
	public void setUimage(String uimage) {
		this.uimage = uimage;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", ucardId=" + ucardId + ", urealName=" + urealName + ", uname=" + uname
				+ ", ubirthday=" + ubirthday + ", usex=" + usex + ", uaddress=" + uaddress + ", utel=" + utel
				+ ", uemail=" + uemail + ", upassword=" + upassword + ", upostcode=" + upostcode + ", ustatus="
				+ ustatus + ", uimage=" + uimage + "]";
	}


	public String getEmailCode() {
		return emailCode;
	}


	public void setEmailCode(String emailCode) {
		this.emailCode = emailCode;
	}
	
}
