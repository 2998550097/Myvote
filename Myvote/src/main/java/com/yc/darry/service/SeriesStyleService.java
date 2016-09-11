package com.yc.darry.service;

import org.apache.ibatis.annotations.Param;

public interface SeriesStyleService {
	boolean addSeriesStyle(@Param("goodid")Integer goodid,@Param("seriesname")String seriesname,@Param("stylename")String stylename);

	boolean deleteSeriesStyle(Integer goodid);

	boolean updateSeriesStyle(@Param("goodid")Integer goodid,@Param("seriesname")String seriesname,@Param("stylename")String stylename);
}
