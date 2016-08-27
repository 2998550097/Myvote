package com.yc.vote.service;

import java.util.List;

import com.yc.vote.entity.Option;

public interface OptionService {

	List<Option> getOptionByVsId(int vsId);

}
