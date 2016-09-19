package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Series;

public interface SeriesService {

	List<Series> getSeries();

	boolean addSeries(String seriesname);

	boolean deleteSeries(String... seriesid);
}
