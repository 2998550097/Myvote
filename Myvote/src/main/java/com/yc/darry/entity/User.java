package com.yc.darry.entity;

import java.io.Serializable;

public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer userid;
	private String ucardid;
	private String urealname;
	private String uname;
	private String ubirthday;
	private String usex;
	private String uaddress;
	private String utel;
	private String uemail;
	private String upassword;
	private String upostcode;
	private String ustatus;
	private String ustate;
	private String uimage;
	private String emailCode;

	public User(Integer userid, String ucardid, String urealname, String uname, String ubirthday, String usex,
			String uaddress, String utel, String uemail, String upassword, String upostcode, String ustatus,String ustate,
			String uimage, String emailCode) {
		super();
		this.userid = userid;
		this.ucardid = ucardid;
		this.urealname = urealname;
		this.uname = uname;
		this.ubirthday = ubirthday;
		this.usex = usex;
		this.uaddress = uaddress;
		this.utel = utel;
		this.uemail = uemail;
		this.upassword = upassword;
		this.setUpostcode(upostcode);
		this.ustatus = ustatus;
		this.ustate = ustate;
		this.uimage = uimage;
		this.emailCode = emailCode;
	}

	public User(String uemail, String upassword) {
		super();
		this.uemail = uemail;
		this.upassword = upassword;
	}
	

	public User(Integer userid, String urealname, String utel, String usex) {
		super();
		this.userid = userid;
		this.urealname = urealname;
		this.utel = utel;
		this.usex = usex;
	}

	public User() {
		super();
	}

	public Integer getuserid() {
		return userid;
	}

	public void setuserid(Integer userid) {
		this.userid = userid;
	}

	public String getUcardid() {
		return ucardid;
	}

	public void setUcardid(String ucardid) {
		this.ucardid = ucardid;
	}

	public String getUrealname() {
		return urealname;
	}

	public void setUrealname(String urealname) {
		this.urealname = urealname;
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

	public String getEmailCode() {
		return emailCode;
	}

	public void setEmailCode(String emailCode) {
		this.emailCode = emailCode;
	}

	public String getUpostcode() {
		return upostcode;
	}

	public void setUpostcode(String upostcode) {
		this.upostcode = upostcode;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", ucardid=" + ucardid + ", urealname=" + urealname + ", uname=" + uname
				+ ", ubirthday=" + ubirthday + ", usex=" + usex + ", uaddress=" + uaddress + ", utel=" + utel
				+ ", uemail=" + uemail + ", upassword=" + upassword + ", upostcode=" + upostcode + ", ustatus="
				+ ustatus + ", ustate=" + ustate +", uimage=" + uimage + ", emailCode=" + emailCode + "]";
	}

	public String getUstate() {
		return ustate;
	}

	public void setUstate(String ustate) {
		this.ustate = ustate;
	}

}
