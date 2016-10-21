package com.siwa.model;

public class Comment {
	private int commentID;
	private String commentDetail;
	private String commentTime;
	private String userComment;
	private String commentStatus;
	private int issueID;
	
	public int getCommentID() {
		return commentID;
	}
	public void setCommentID(int commentID) {
		this.commentID = commentID;
	}
	
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	
	public String getUserComment() {
		return userComment;
	}
	public void setUserComment(String userComment) {
		this.userComment = userComment;
	}
	
	public String getCommentDetail() {
		return commentDetail;
	}
	public void setCommentDetail(String commentDetail) {
		this.commentDetail = commentDetail;
	}
	public String getCommentStatus() {
		return commentStatus;
	}
	public void setCommentStatus(String commentStatus) {
		this.commentStatus = commentStatus;
	}
	
	public int getIssueID() {
		return issueID;
	}
	public void setIssueID(int issueID) {
		this.issueID = issueID;
	}
	@Override
	public String toString() {
		return "Comment [commentID=" + commentID + ", commentDetail=" + commentDetail + ", commentTime=" + commentTime
				+ ", userComment=" + userComment + ", commentStatus=" + commentStatus + ", issueID=" + issueID + "]";
	}
	
	
	
}
