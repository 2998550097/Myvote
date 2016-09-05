package com.yc.darry.entity;

public class Collections {
	private Integer collectionId;
	private Integer userId;
	private Integer goodId;
	private String ctime;
	
	public Collections(Integer collectionId, Integer userId, Integer goodId, String ctime) {
		this.collectionId = collectionId;
		this.userId = userId;
		this.goodId = goodId;
		this.ctime = ctime;
	}
	
	public Collections() {
	}

	public Integer getCollectionId() {
		return collectionId;
	}

	public void setCollectionId(Integer collectionId) {
		this.collectionId = collectionId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public String getCtime() {
		return ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}


	@Override
	public String toString() {
		return "Collection [collectionId=" + collectionId + ", userId=" + userId + ", goodId=" + goodId + ", ctime="
				+ ctime + ", scount=" +  "]";
	}
}
