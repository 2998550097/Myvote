package com.yc.darry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.darry.entity.Comments;
import com.yc.darry.mapper.CommentMapper;
import com.yc.darry.mapper.StoreMapper;
import com.yc.darry.service.CommentService;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public List<Comments> findComments() {
		return commentMapper.findComments();
	}

}
