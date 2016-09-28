<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Issue</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.jsp">Home</a></li>
					<li><a href="PersonController?action=listPerson">Person</a></li>
					<li><a href="ProjectController?action=listProject">Project</a></li>
					<li><a href="CommentController?action=listComment">Comment</a></li>
					<li><a href="TestController?action=listTest">Test</a></li>
					<li><a href="AssignController?action=listAssign">Assign</a></li>
					<li><a href="IssueController?action=listIssue">Issue</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<%
						String username = (String) session.getAttribute("username");
						if (username == null) {
					%>
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li><a href="LoginController"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
					<%
						} else {
					%>
					<li><a>Hi, <%=username%></a></li>
					<li>
					<a href="LoginController?action=logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
					</li>
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
	<form action="IssueController.do" method="post" class="form-inline">
		<div class="container">
			<input type="hidden" name="issueID"
				value="<c:out value="${issue.issueID}" />" readonly="readonly"
				placeholder="Auto generate ID" /> <br> <br>
			<div class="form-group">
				<label for="description">Project</label><br> <select
					name="project" class="form-control">
					<c:forEach var="issue" items="${issuess}">
						<option><c:out value="${issue.project}" /></option>
					</c:forEach>
				</select>
			</div>
			<br> <br>
			<div class="form-group">
				<label for="description">Assign To</label><br> <select
					name="assign" class="form-control">
					<c:forEach var="issue" items="${issuess}">
						<option><c:out value="${issue.assign}" /></option>
					</c:forEach>
				</select>
			</div>
			<br> <br>
			<div class="form-group">
				<label for="tile">Title</label><br> <input type="text"
					name="title" class="form-control"
					value="<c:out value="${issue.title}" />" placeholder="Title" />
			</div>
			<br> <br>
			<div class="form-group">
				<label for="description">Description</label><br> <input
					type="text" name="description" class="form-control"
					value="<c:out value="${issue.description}" />"
					placeholder="Description" />
			</div>
			<br> <br>
			<div class="form-group">
				<label for="severity">Severity</label><br> <select
					name="severity" class="form-control">
					<option value="Minor">Minor</option>
					<option value="Major">Major</option>
					<option value="Crash">Crash</option>
				</select>
			</div>
			<br> <br>
			<div class="form-group">
				<label for="priority">Priority</label><br> <select
					name="priority" class="form-control">
					<option value="Low">Low</option>
					<option value="Normal">Normal</option>
					<option value="High">High</option>
				</select>
			</div>
			<br> <br>
			<div class="form-group">
				<label for="dueDate">Due Date</label><br> <input type="date"
					name="dueDate" class="form-control"
					value="<fmt:formatDate pattern="yyyy-MM-dd" value="${issue.dueDate}" />" />
			</div>
			<br> <br> <input type="hidden" id="date" name="updateDate"
				value="<c:out value="${issue.updateDate}" />"
				placeholder="Comment Time" />

			<div class="form-group">
				<label for="status">Status</label><br> <input type="text"
					name="status" class="form-control"
					value="<c:out value="${issue.status}" />" placeholder="Status" />
			</div>
			<br> <br> <input type="submit" class="btn btn-default"
				value="Submit" />
		</div>
	</form>

	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-3.1.0.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
		
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1; //January is 0!

		var yyyy = today.getFullYear();
		var hh = today.getHours();
		var mn = today.getMinutes();
		var ss = today.getSeconds();
		if(dd<10){
		    dd='0'+dd
		} 
		if(mm<10){
		    mm='0'+mm
		}
		if(ss<10){
			ss='0'+ss
		}
		if(mn<10){
			mn='0'+mn
		}
		if(hh<10){
			hh='0'+hh
		}
		var today = dd+'/'+mm+'/'+yyyy+" "+hh+":"+mn+":"+ss;
		document.getElementById('date').value = today;
		console.log(today);
	</script>
</body>
</html>