package com.yc.darry.entity;

public class Paramter {
	private Integer paramterId;
	private Integer goodId;
	private Integer pcarat;
	private Integer psize;
	private String gcrystal;
	private String gcutting;

	public Paramter(Integer paramterId, Integer goodId, Integer pcarat, Integer psize, String gcrystal,
			String gcutting) {
		super();
		this.paramterId = paramterId;
		this.goodId = goodId;
		this.pcarat = pcarat;
		this.psize = psize;
		this.gcrystal = gcrystal;
		this.gcutting = gcutting;
	}

	public Paramter() {
		super();
	}

	public Integer getParamterId() {
		return paramterId;
	}

	public void setParamterId(Integer paramterId) {
		this.paramterId = paramterId;
	}

	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public Integer getPcarat() {
		return pcarat;
	}

	public void setPcarat(Integer pcarat) {
		this.pcarat = pcarat;
	}

	public Integer getPsize() {
		return psize;
	}

	public void setPsize(Integer psize) {
		this.psize = psize;
	}

	public String getGcrystal() {
		return gcrystal;
	}

	public void setGcrystal(String gcrystal) {
		this.gcrystal = gcrystal;
	}

	public String getGcutting() {
		return gcutting;
	}

	public void setGcutting(String gcutting) {
		this.gcutting = gcutting;
	}

	@Override
	public String toString() {
		return "Paramter [paramterId=" + paramterId + ", goodId=" + goodId + ", pcarat=" + pcarat + ", psize=" + psize
				+ ", gcrystal=" + gcrystal + ", gcutting=" + gcutting + "]";
	}

}
