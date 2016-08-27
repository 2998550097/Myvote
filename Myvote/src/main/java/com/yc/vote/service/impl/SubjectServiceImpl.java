package com.yc.vote.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.vote.entity.Subject;
import com.yc.vote.mapper.SubjectMapper;
import com.yc.vote.service.SubjectService;

@Service("subjectService")
public class SubjectServiceImpl implements SubjectService {
	
	@Autowired
	private SubjectMapper subjectMapper;
	@Override
	public List<Subject> getAllList() {
		return subjectMapper.getSubjectInfo();
	}
	@Override
	public Subject getSubjectById(int vsId) {
		return subjectMapper.getSubjectById(vsId);
	}

}
