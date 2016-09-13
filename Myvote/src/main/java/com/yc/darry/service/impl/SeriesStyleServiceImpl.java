package com.yc.darry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yc.darry.mapper.SeriesStyleMapper;
import com.yc.darry.service.SeriesStyleService;

@Service("seriesstyleService")
public class SeriesStyleServiceImpl implements SeriesStyleService{
	@Autowired
	private SeriesStyleMapper seriesstyleMapper;

	@Override
	public boolean addSeriesStyle(Integer goodid, String seriesname, String stylename) {
		return seriesstyleMapper.addSeriesStyle(goodid, seriesname, stylename);
	}

	@Override
	public boolean deleteSeriesStyle(Integer goodid) {
		return seriesstyleMapper.deleteSeriesStyle(goodid);
		
	}

	@Override
	public boolean updateSeriesStyle(Integer goodid, String seriesname, String stylename) {
		
		return seriesstyleMapper.updateSeriesStyle(goodid, seriesname, stylename);
		
	}
}
