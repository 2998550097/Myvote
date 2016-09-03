package com.yc.darry.entity;

public class Articlecom {
	private Integer articlecom;
	private Integer articleId;
	private String accontent;
	private String acexpression;
	private String actime;
	private Integer praisecount;

	public Articlecom() {
		super();
	}

	public Articlecom(Integer articlecom, Integer articleId, String accontent, String acexpression, String actime,
			Integer praisecount) {
		super();
		this.articlecom = articlecom;
		this.articleId = articleId;
		this.accontent = accontent;
		this.acexpression = acexpression;
		this.actime = actime;
		this.praisecount = praisecount;
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public String getAccontent() {
		return accontent;
	}

	public void setAccontent(String accontent) {
		this.accontent = accontent;
	}

	public String getAcexpression() {
		return acexpression;
	}

	public void setAcexpression(String acexpression) {
		this.acexpression = acexpression;
	}

	public String getActime() {
		return actime;
	}

	public void setActime(String actime) {
		this.actime = actime;
	}

	public Integer getArticlecom() {
		return articlecom;
	}

	public void setArticlecom(Integer articlecom) {
		this.articlecom = articlecom;
	}

	public Integer getPraisecount() {
		return praisecount;
	}

	public void setPraisecount(Integer praisecount) {
		this.praisecount = praisecount;
	}

	@Override
	public String toString() {
		return "Articlecom [articlecom=" + articlecom + ", articleId=" + articleId + ", accontent=" + accontent
				+ ", acexpression=" + acexpression + ", actime=" + actime + ", praisecount=" + praisecount + "]";
	}

}
