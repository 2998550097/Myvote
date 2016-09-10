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
	
	public Pagination() {
		super();
	}
	
	public Pagination(int pagesize, int pagenum) {
		super();
		this.pagesize = pagesize;
		this.pagenum = pagenum;
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

	public int getMaxpage() {

		return maxpage;

	}

	public void setMaxpage(int maxpage) {

		this.maxpage = maxpage;

	}

	@Override

	public String toString() {

		return "入参==>pagesize=" + pagesize + ", pagenum=" + pagenum +

		"\n出参==> totalSize=" + totalSize + ", maxpage=" + maxpage+", goods=" + goods ;

	}

	public List<Good> getGoods() {
		return goods;
	}

	public void setGoods(List<Good> goods) {
		this.goods = goods;
	}

}
