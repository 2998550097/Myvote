package com.yc.darry.entity;

public class Paramter {
	private Integer paramterid;
	private Integer goodid;
	private String pcarat;
	private Integer psize;
	private String gcrystal;
	private String gcutting;
	private Integer pprice;

	public Paramter(Integer paramterid, Integer goodid, String pcarat, Integer psize, String gcrystal,
			String gcutting,Integer pprice) {
		super();
		this.paramterid = paramterid;
		this.goodid = goodid;
		this.pcarat = pcarat;
		this.psize = psize;
		this.gcrystal = gcrystal;
		this.gcutting = gcutting;
		this.pprice=pprice;
	}

	public Paramter() {
		super();
	}

	public Integer getParamterid() {
		return paramterid;
	}

	public void setParamterid(Integer paramterid) {
		this.paramterid = paramterid;
	}

	public Integer getGoodid() {
		return goodid;
	}

	public void setGoodid(Integer goodid) {
		this.goodid = goodid;
	}

	public String getPcarat() {
		return pcarat;
	}

	public void setPcarat(String pcarat) {
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
		return "\nParamter [paramterid=" + paramterid + ", goodid=" + goodid + ", pcarat=" + pcarat + ", psize=" + psize
				+ ", gcrystal=" + gcrystal + ", gcutting=" + gcutting +  ", pprice=" + pprice + "]";
	}

	public Integer getPprice() {
		return pprice;
	}

	public void setPprice(Integer pprice) {
		this.pprice = pprice;
	}

}
