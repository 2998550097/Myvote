package com.yc.darry.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.yc.darry.entity.Paramter;

public interface ParamterMapper {
	boolean addParamter(Paramter paramter);

	boolean updateParamter(Paramter paramter);

	boolean deleteParamter(Integer goodid);
	
	List<String> getDifPcaratById(int goodid);
	
	boolean deleteParamter(@Param("goodid")Integer goodid,@Param("paramterid")Integer paramterid);
}
