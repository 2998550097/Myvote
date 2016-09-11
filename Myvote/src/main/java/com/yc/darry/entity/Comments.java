package com.yc.darry.entity;

public class Comments {
	private Integer commentid;
	private Integer orderid;
	private Integer goodid;
	private String comtime;
	private String commessage;
	private String comimage;
	private String comscore;
	
	private String uname;
	private String gname;
//	commentid,uname,gname,orderid,commessage,comscore,comimage

	
	
	public Comments(Integer commentid, Integer orderid, Integer goodid, String comtime, String commessage,
			String comimage, String comscore) {
		super();
		this.commentid = commentid;
		this.orderid = orderid;
		this.goodid = goodid;
		this.comtime = comtime;
		this.commessage = commessage;
		this.comimage = comimage;
		this.comscore = comscore;
	}
	
	

	public Comments(Integer commentid, Integer orderid, String comtime, String commessage, String comimage,
			String comscore, String uname, String gname) {
		super();
		this.commentid = commentid;
		this.orderid = orderid;
		this.comtime = comtime;
		this.commessage = commessage;
		this.comimage = comimage;
		this.comscore = comscore;
		this.uname = uname;
		this.gname = gname;
	}



	public Comments() {
		super();
	}
	
	
	

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public Integer getcommentid() {
		return commentid;
	}

	public void setcommentid(Integer commentid) {
		this.commentid = commentid;
	}

	public Integer getorderid() {
		return orderid;
	}

	public void setorderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Integer getgoodid() {
		return goodid;
	}

	public void setgoodid(Integer goodid) {
		this.goodid = goodid;
	}

	public String getComtime() {
		return comtime;
	}

	public void setComtime(String comtime) {
		this.comtime = comtime;
	}

	public String getCommessage() {
		return commessage;
	}

	public void setCommessage(String commessage) {
		this.commessage = commessage;
	}

	public String getComimage() {
		return comimage;
	}

	public void setComimage(String comimage) {
		this.comimage = comimage;
	}

	public String getComscore() {
		return comscore;
	}

	public void setComscore(String comscore) {
		this.comscore = comscore;
	}



	@Override
	public String toString() {
		return "Comments [commentid=" + commentid + ", orderid=" + orderid + ", goodid=" + goodid + ", comtime="
				+ comtime + ", commessage=" + commessage + ", comimage=" + comimage + ", comscore=" + comscore
				+ ", uname=" + uname + ", gname=" + gname + "]";
	}


}
