package com.siwa.dao;

import java.util.List;

import com.siwa.model.Comment;


public interface CommentDAO {
	public void addComment(Comment comment);

	public void deleteComment(int commentID);

	public void updateComment(Comment comment);

	public List<Comment> getAllComments();

	public Comment getCommentById(int commentID);

}