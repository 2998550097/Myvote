package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Paramter;

public interface ParamterService {

	boolean addParamter(Paramter paramter);

	boolean updateParamter(Paramter paramter);

	boolean deleteParamter(Integer goodid,Integer paramterid);

}
