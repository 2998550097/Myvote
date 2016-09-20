package com.yc.darry.mapper;

import java.util.List;

import com.yc.darry.entity.Style;

public interface StyleMapper {

	List<Style> getAll();

	boolean addStyle(String stylename);

	boolean deleteStyle(String... styleid);

}
