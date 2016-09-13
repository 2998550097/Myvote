package com.yc.darry.mapper;

import org.apache.ibatis.annotations.Param;

import com.yc.darry.entity.Paramter;

public interface ParamterMapper {
	boolean addParamter(Paramter paramter);

	boolean updateParamter(Paramter paramter);

	boolean deleteParamter(@Param("goodid")Integer goodid,@Param("paramterid")Integer paramterid);
}
