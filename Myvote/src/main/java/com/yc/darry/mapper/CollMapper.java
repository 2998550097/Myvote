package com.yc.darry.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.darry.entity.Collections;

public interface CollMapper {
	List<Collections> findColl();
	List<Collections> search(@Param("gname")String gname,@Param("seriesname")String seriesname,@Param("stylename")String stylename);
}
