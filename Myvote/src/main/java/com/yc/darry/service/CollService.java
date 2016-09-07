package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Collections;

public interface CollService {

	List<Collections> findColl();

	List<Collections> search(String gname,String seriesname,String stylename);

}
