package com.siwa.dao;

import java.util.List;

import com.siwa.model.Comment;
import com.siwa.model.Issue;
import com.siwa.model.Test;

public interface IssueDAO {
	
	public void addIssue(Issue issue);

	public void deleteIssue(int issueID);

	public void updateIssue(Issue issue);

	public List <Issue> getAllIssue();

	public Issue getAssignById(int issueID);
	
	public List <Issue> getPersonByProject(int issueID);
	
	public List <Comment> getCommentByIssue(int issueID);
	
	public void setStatusAssign(Issue issue);
	
	public void setStatusFeedback(Issue issue);
	
	public void setStatusConfirmed(Issue issue);
	
	public void setStatusResolved(Issue issue);
	
	
}
