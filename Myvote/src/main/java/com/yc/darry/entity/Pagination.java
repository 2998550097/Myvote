package com.yc.darry.entity;

import java.io.Serializable;
import java.util.List;

import com.yc.darry.entity.Good;

public class Pagination implements Serializable {

	private static final long serialVersionUID = -6586444881166804412L;

	// 入参

	private int pagesize=12;

	private int pagenum;

	// 出参

	private int totalSize;

	private int maxpage = 1;
	
	private List<Good> goods;
	
	private int min; 
	private int max;
	private String seriesname;
	
	public Pagination() {
		super();
	}
	

	public Pagination(int pagesize, int pagenum, int min, int max,String seriesname) {
		super();
		this.pagesize = pagesize;
		this.pagenum = pagenum;
		this.min = min;
		this.max = max;
		this.seriesname = seriesname;
	}






	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getPagenum() {
		return pagenum;
	}

	public void setPagenum(int pagenum) {
		this.pagenum = pagenum;
	}

	public int getTotalSize() {
		return totalSize;
	}

	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
		if (totalSize > 0) {
			// 计算最大页数
			maxpage = (totalSize / pagesize) + (totalSize % pagesize == 0 ? 0 : 1);
		}
	}
	
	/*
	 * 上一页
	 */
	public int getProPageNo(){
		int proPageNo = 1;
		if(pagenum>1){
			proPageNo= pagenum-1;
		}
		return proPageNo;
	}
	
	/*
	 * 下一页
	 */
	public int getnextPageNo(){
		int nextPageNo = 1;
		if(pagenum<this.getMaxpage()){//没有到最后一页
			nextPageNo= pagenum+1;
		}else{
			nextPageNo= this.getMaxpage();
		}
		return nextPageNo;
	}
	
	public int getMaxpage() {
		return maxpage;
	}

	public void setMaxpage(int maxpage) {

		this.maxpage = maxpage;

	}

	@Override
	public String toString() {
		return "入参==>pagesize=" + pagesize + ", pagenum=" + pagenum +
		"\n出参==> totalSize=" + totalSize + ", maxpage=" + maxpage+
		", min=" + min+", max=" + max+", seriesname=" + seriesname+"\n, goods=" + goods  ;
	}

	public List<Good> getGoods() {
		return goods;
	}

	public void setGoods(List<Good> goods) {
		this.goods = goods;
	}

	public int getMin() {
		return min;
	}

	public void setMin(int min) {
		this.min = min;
	}

	public int getMax() {
		return max;
	}

	public void setMax(int max) {
		this.max = max;
	}


	public String getSeriesname() {
		return seriesname;
	}


	public void setSeriesname(String seriesname) {
		this.seriesname = seriesname;
	}
	
}
