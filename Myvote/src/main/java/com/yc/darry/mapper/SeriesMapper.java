package com.yc.darry.mapper;

import java.util.List;

import com.yc.darry.entity.Series;

public interface SeriesMapper {

	List<Series> getAll();

	boolean addSeries(String seriesname);

	boolean deleteSeries(String... seriesid);

}
