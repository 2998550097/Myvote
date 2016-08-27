package com.yc.vote.mapper;

import java.util.List;

import com.yc.vote.entity.Option;

public interface OptionMapper {

	List<Option> getOptionByVsId(int vsId);

}
