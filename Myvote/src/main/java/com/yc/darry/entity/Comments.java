package com.yc.darry.entity;

public class Comments {
	private Integer commentId;
	private Integer orderId;
	private Integer goodId;
	private String comTime;
	private String comMessage;
	private String comImage;
	private String comScore;

	public Comments(Integer commentId, Integer orderId, Integer goodId, String comTime, String comMessage,
			String comImage, String comScore) {
		super();
		this.commentId = commentId;
		this.orderId = orderId;
		this.goodId = goodId;
		this.comTime = comTime;
		this.comMessage = comMessage;
		this.comImage = comImage;
		this.comScore = comScore;
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

	public String getComTime() {
		return comTime;
	}

	public void setComTime(String comTime) {
		this.comTime = comTime;
	}

	public String getComMessage() {
		return comMessage;
	}

	public void setComMessage(String comMessage) {
		this.comMessage = comMessage;
	}

	public String getComImage() {
		return comImage;
	}

	public void setComImage(String comImage) {
		this.comImage = comImage;
	}

	public String getComScore() {
		return comScore;
	}

	public void setComScore(String comScore) {
		this.comScore = comScore;
	}

	@Override
	public String toString() {
		return "Comments [commentId=" + commentId + ", orderId=" + orderId + ", goodId=" + goodId + ", comTime="
				+ comTime + ", comMessage=" + comMessage + ", comImage=" + comImage + ", comScore=" + comScore + "]";
	}

}
