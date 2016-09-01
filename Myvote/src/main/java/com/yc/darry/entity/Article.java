package com.yc.darry.entity;

public class Article {
	private Integer articleId ;
	private Integer userId;
	private String atitle;
	private String aplate;
	private String aprivacy;
	private String atime;
	private Integer areadCount;
	private Integer afocus;
	
	public Article(Integer articleId, Integer userId, String atitle, String aplate, String aprivacy, String atime,
			Integer areadCount, Integer afocus) {
		super();
		this.articleId = articleId;
		this.userId = userId;
		this.atitle = atitle;
		this.aplate = aplate;
		this.aprivacy = aprivacy;
		this.atime = atime;
		this.areadCount = areadCount;
		this.afocus = afocus;
	}
	
	public Article() {
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getAtitle() {
		return atitle;
	}

	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}

	public String getAplate() {
		return aplate;
	}

	public void setAplate(String aplate) {
		this.aplate = aplate;
	}

	public String getAprivacy() {
		return aprivacy;
	}

	public void setAprivacy(String aprivacy) {
		this.aprivacy = aprivacy;
	}

	public String getAtime() {
		return atime;
	}

	public void setAtime(String atime) {
		this.atime = atime;
	}

	public Integer getAreadCount() {
		return areadCount;
	}

	public void setAreadCount(Integer areadCount) {
		this.areadCount = areadCount;
	}

	public Integer getAfocus() {
		return afocus;
	}

	public void setAfocus(Integer afocus) {
		this.afocus = afocus;
	}

	@Override
	public String toString() {
		return "Article [articleId=" + articleId + ", userId=" + userId + ", atitle=" + atitle + ", aplate=" + aplate
				+ ", aprivacy=" + aprivacy + ", atime=" + atime + ", areadCount=" + areadCount + ", afocus=" + afocus
				+ "]";
	}
}
