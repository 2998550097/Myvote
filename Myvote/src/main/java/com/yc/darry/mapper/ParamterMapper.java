package com.yc.darry.mapper;

import com.yc.darry.entity.Paramter;

public interface ParamterMapper {
	boolean addParamter(Paramter paramter);

	boolean updateParamter(Paramter paramter);

	boolean deleteParamter(Integer goodid);

}
