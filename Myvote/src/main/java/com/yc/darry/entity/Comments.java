package com.yc.darry.entity;

public class Comments {
	private Integer commentId;
	private Integer orderId;
	private Integer goodId;
	private String comtime;
	private String commessage;
	private String comimage;
	private String comscore;

	public Comments(Integer commentId, Integer orderId, Integer goodId, String comtime, String commessage,
			String comimage, String comscore) {
		super();
		this.commentId = commentId;
		this.orderId = orderId;
		this.goodId = goodId;
		this.comtime = comtime;
		this.commessage = commessage;
		this.comimage = comimage;
		this.comscore = comscore;
	}

	public Comments() {
		super();
	}

	public Integer getCommentId() {
		return commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
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
		return "Comments [commentId=" + commentId + ", orderId=" + orderId + ", goodId=" + goodId + ", comtime="
				+ comtime + ", commessage=" + commessage + ", comimage=" + comimage + ", comscore=" + comscore + "]";
	}

}
