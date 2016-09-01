package com.yc.darry.entity;

public class Articlecom {
	private Integer articleCom;
	private Integer articleId;
	private String accontent;
	private String acexpression;
	private String actime;
	private Integer praiseCount;

	public Articlecom(Integer articleCom, Integer articleId, String accontent, String acexpression, String actime,
			Integer praiseCount) {
		super();
		this.articleCom = articleCom;
		this.articleId = articleId;
		this.accontent = accontent;
		this.acexpression = acexpression;
		this.actime = actime;
		this.praiseCount = praiseCount;
	}

	public Articlecom() {
		super();
	}

	public Integer getArticleCom() {
		return articleCom;
	}

	public void setArticleCom(Integer articleCom) {
		this.articleCom = articleCom;
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

	public Integer getPraiseCount() {
		return praiseCount;
	}

	public void setPraiseCount(Integer praiseCount) {
		this.praiseCount = praiseCount;
	}

	@Override
	public String toString() {
		return "Articlecom [articleCom=" + articleCom + ", articleId=" + articleId + ", accontent=" + accontent
				+ ", acexpression=" + acexpression + ", actime=" + actime + ", praiseCount=" + praiseCount + "]";
	}

}
