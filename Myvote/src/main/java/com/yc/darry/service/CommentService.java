package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Comments;

public interface CommentService {

	List<Comments> findComments();

	boolean deleteComments(int commentid);

}
