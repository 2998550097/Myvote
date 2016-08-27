package com.yc.vote.mapper;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.vote.entity.Subject;
import com.yc.vote.service.SubjectService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class SubjectMapperTest {
	
	@Autowired
	private SubjectService subjectService;
	@Test
	public void testGetSubjectInfo() {
		List<Subject> subject=subjectService.getAllList();
		System.out.println(subject);
	}
	
	@Test
	public void testGetSubjectById() {
		Subject subject=subjectService.getSubjectById(103);
		System.out.println(subject);
	}

}
