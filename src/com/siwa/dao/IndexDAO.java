package com.siwa.dao;

import java.util.List;

import com.siwa.model.Index;

public interface IndexDAO {
	
	public List<Index> getAllIndex(String assign);
	
	public List<Index> getReportByMe(String report);
	
	public List<Index> getResolveIssue();
	
	public List<Index> getRecentlyModified();
	
	public List<Index> getProjectByUser(String assign);
	
	public List<Index> getPublicProject();
	
	public List<Index> getUnassignIssue();
	
	public List<Index> getLabelByIssueId(String user);
	
	public List<Index> getGitHubProject(String user);
 	
}
