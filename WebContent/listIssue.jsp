<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show All Issue</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<jsp:include page="navbar.jsp" />

	<div class="container">
		<br>
		<p>
			<a href="IssueController.do?action=insert">Add Issue</a>
		</p>
		<table class="table table-hover table-responsive table-striped">
			<thead>
				<tr>
					<th>Issue ID</th>
					<th>Project</th>
					<th>Assign To</th>
					<th>Title</th>
					<th>Description</th>
					<th>Severity</th>
					<th>Priority</th>
					<th>Due Date</th>
					<th>Update Date</th>

					<th>Status</th>
					<th>Reporter</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${issues}" var="issue">
					<tr>

						<td><c:out value="${issue.issueID}"></c:out></td>
						<td><c:out value="${issue.project}"></c:out></td>
						<td><c:out value="${issue.assign}"></c:out></td>
						<td><c:out value="${issue.title}"></c:out></td>
						<td><c:out value="${issue.description}"></c:out></td>
						<td><c:out value="${issue.severity}"></c:out></td>
						<td><c:out value="${issue.priority}"></c:out></td>
						<fmt:setLocale value="en_US" />
						<td><fmt:formatDate pattern="dd/MM/yyyy"
								value="${issue.dueDate}" /></td>
						<td><c:out value="${issue.updateDate}"></c:out></td>
						<td><c:out value="${issue.status}"></c:out></td>
						<td><c:out value="${issue.reporter}"></c:out></td>
						<td><a
							href="IssueController.do?action=edit&issueID=<c:out value="${issue.issueID }"/>">Update</a></td>
						<td><a
							href="IssueController.do?action=delete&issueID=<c:out value="${issue.issueID }"/>">Delete</a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-3.1.0.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>