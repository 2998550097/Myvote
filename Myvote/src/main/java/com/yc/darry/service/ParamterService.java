package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Paramter;

public interface ParamterService {

	boolean addParamter(Paramter paramter);

	boolean updateParamter(Paramter paramter);
	
	List<String> getPcaratById(int goodid);
	
	boolean deleteParamter(Integer goodid,Integer paramterid);

}
