package com.yc.darry.mapper;

import org.apache.ibatis.annotations.Param;

public interface SeriesStyleMapper {
	boolean addSeriesStyle(@Param("goodid")Integer goodid,@Param("seriesname")String seriesname,@Param("stylename")String stylename);

	boolean deleteSeriesStyle(Integer goodid);

	boolean updateSeriesStyle(@Param("goodid")Integer goodid,@Param("seriesname")String seriesname,@Param("stylename")String stylename);
}
