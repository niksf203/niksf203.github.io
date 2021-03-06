package com.siwa.model;

import java.util.Date;

public class Project {
	
	private int projectID;
	private String projectName;
	private String status;
	private String description;
	private Date startDate;
	private Date finishDate;
	private String viewStatus;
	private String projectType;
	private String owner;
	
	
	public int getProjectID() {
		return projectID;
	}
	public void setProjectID(int projectID) {
		this.projectID = projectID;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	
	public Date getFinishDate() {
		return finishDate;
	}
	public void setFinishDate(Date finishDate) {
		this.finishDate = finishDate;
	}
	
	public String getViewStatus() {
		return viewStatus;
	}
	public void setViewStatus(String viewStatus) {
		this.viewStatus = viewStatus;
	}
	public String getProjectType() {
		return projectType;
	}
	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	@Override
	public String toString() {
		return "Project [projectID=" + projectID + ", projectName=" + projectName + ", status=" + status
				+ ", description=" + description + ", startDate=" + startDate + ", finishDate=" + finishDate
				+ ", viewStatus=" + viewStatus + ", projectType=" + projectType + ", owner=" + owner + "]";
	}
	
}
