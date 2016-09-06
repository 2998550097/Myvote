package com.yc.darry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.darry.entity.Series;
import com.yc.darry.mapper.SeriesMapper;
import com.yc.darry.service.SeriesService;

@Service("seriesService")
public class SeriesServiceImpl implements SeriesService {
	@Autowired
	private SeriesMapper seriesMapper;
	
	@Override
	public List<Series> getSeries() {
		return seriesMapper.getAll();
	}

}
