package com.siwa.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.siwa.dao.CommentDAO;
import com.siwa.dao.CommentDAOImplementation;
import com.siwa.dao.EditStatusDAO;
import com.siwa.dao.EditStatusDAOIM;
import com.siwa.dao.IssueDAO;
import com.siwa.dao.IssueDAOImplementation;
import com.siwa.model.Comment;
import com.siwa.model.Issue;

@WebServlet("/CommentController")
public class CommentController extends HttpServlet {

	private CommentDAO dao;
	private EditStatusDAO dao3;
	private IssueDAO dao2;
	private static final long serialVersionUID = 1L;
	public static final String LIST_COMMENT = "/listComment.jsp";
	public static final String INSERT_OR_EDIT = "/comment.jsp";
	public static final String ISSUE_DETAIL = "/issueDetail.jsp";
	public static final String ASSIGN = "/statusAssign.jsp";
	public static final String FEEDBACK = "/statusFeedback.jsp";
	public static final String CONFIRMED = "/statusConfirmed.jsp";
	public static final String RESOLVED = "/statusResolved.jsp";

	public CommentController() {
		dao = new CommentDAOImplementation();
		dao3 = new EditStatusDAOIM();
		dao2 = new IssueDAOImplementation();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("delete")) {
			forward = LIST_COMMENT;
			int commentID = Integer.parseInt(request.getParameter("commentID"));
			dao.deleteComment(commentID);
			request.setAttribute("comments", dao.getAllComment());
		} else if (action.equalsIgnoreCase("edit")) {
			forward = INSERT_OR_EDIT;
			int commentID = Integer.parseInt(request.getParameter("commentID"));
			Comment comment = dao.getCommentById(commentID);
			request.setAttribute("comment", comment);
		} else if (action.equalsIgnoreCase("insert")) {
			forward = INSERT_OR_EDIT;
		} else if (action.equalsIgnoreCase("assign")) {
			forward = ASSIGN;
			int issueID = Integer.parseInt(request.getParameter("issueID"));
			Issue issue = dao.getIssueById(issueID);
			request.setAttribute("issue", issue);
			
			issue.setIssueID(issueID);
			dao2.setStatusAssign(issue);
			
		} else if (action.equalsIgnoreCase("feedback")) {
			forward = FEEDBACK;
			int issueID = Integer.parseInt(request.getParameter("issueID"));
			Issue issue = dao.getIssueById(issueID);
			request.setAttribute("issue", issue);
			
			issue.setIssueID(issueID);
			dao2.setStatusFeedback(issue);
			
		} else if (action.equalsIgnoreCase("confirmed")) {
			forward = CONFIRMED;
			int issueID = Integer.parseInt(request.getParameter("issueID"));
			Issue issue = dao.getIssueById(issueID);
			request.setAttribute("issue", issue);
		} else if (action.equalsIgnoreCase("resolved")) {
			forward = RESOLVED;
			int issueID = Integer.parseInt(request.getParameter("issueID"));
			Issue issue = dao.getIssueById(issueID);
			request.setAttribute("issue", issue);
		} else {
			forward = LIST_COMMENT;
			request.setAttribute("comments", dao.getAllComment());
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		
		Comment comment = new Comment();

		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");

		String commentDetail = (request.getParameter("commentDetail"));
		commentDetail = new String(commentDetail.getBytes("ISO8859-1"), "UTF-8");
		comment.setCommentDetail(commentDetail);

		String commentTime = (request.getParameter("commentTime"));
		commentTime = new String(commentTime.getBytes("ISO8859-1"), "UTF-8");
		comment.setCommentTime(commentTime);

		String userComment = username;
		userComment = new String(userComment.getBytes("ISO8859-1"), "UTF-8");
		comment.setUserComment(userComment);

		int issueID = Integer.parseInt(request.getParameter("issueID"));
		comment.setIssueID(issueID);

		String commentID = request.getParameter("commentID");
		
		Issue issue = new Issue();
		
		
		String status = request.getParameter("status");
		String a = "Assign";
		String b = "Feedback";
		System.out.println(status);
		
		String updateDate = (request.getParameter("commentTime"));
		updateDate = new String(updateDate.getBytes("ISO8859-1"), "UTF-8");
		issue.setUpdateDate(updateDate);
		

		if (a != status){
			String commentStatus = "Assign";
			commentStatus = new String(commentStatus.getBytes("ISO8859-1"), "UTF-8");
			comment.setCommentStatus(commentStatus);
			dao.addComment(comment);
			issue.setIssueID(issueID);
			dao2.setStatusAssign(issue);
		}else if (b != status){
			String commentStatus = "Feedback";
			commentStatus = new String(commentStatus.getBytes("ISO8859-1"), "UTF-8");
			comment.setCommentStatus(commentStatus);
			dao.addComment(comment);
			issue.setIssueID(issueID);
			dao2.setStatusFeedback(issue);
		}else if(status.equals("Assign") || status.equals("Feedback") || status.equals("Resolved")){
			String commentStatus = "Confirmed";
			commentStatus = new String(commentStatus.getBytes("ISO8859-1"), "UTF-8");
			comment.setCommentStatus(commentStatus);
			dao.addComment(comment);
			issue.setIssueID(issueID);
			dao2.setStatusConfirmed(issue);
		}else if(status.equals("Assign") || status.equals("Feedback") || status.equals("Confirmed")){
			String commentStatus = "Resolved";
			commentStatus = new String(commentStatus.getBytes("ISO8859-1"), "UTF-8");
			comment.setCommentStatus(commentStatus);
			dao.addComment(comment);
			issue.setIssueID(issueID);
			dao2.setStatusResolved(issue);
		}
		else {
			comment.setCommentID(Integer.parseInt(commentID));
			dao.updateComment(comment);
		}

		issueID = Integer.parseInt(request.getParameter("issueID"));
		issue = dao2.getAssignById(issueID);
		
		request.setAttribute("issue", issue);
		request.setAttribute("comments", dao2.getCommentByIssue(issueID));
		RequestDispatcher view = request.getRequestDispatcher(ISSUE_DETAIL);
		view.forward(request, response);

	}

}
