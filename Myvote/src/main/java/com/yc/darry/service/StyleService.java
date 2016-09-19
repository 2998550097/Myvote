package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Style;

public interface StyleService {

	List<Style> getStyle();

	boolean addStyle(String stylename);

	boolean deleteStyle(String... styleids);
}
