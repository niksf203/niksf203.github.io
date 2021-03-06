<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/paper/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-awusxf8AUojygHf2+joICySzB780jVvQaVCAt1clU3QsyAitLGul28Qxb2r1e5g+"
	crossorigin="anonymous">
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>

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
				<a class="navbar-brand" href="#">IssueTracking</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">

				<ul class="nav navbar-nav navbar-right">
					<%
						String username = (String) session.getAttribute("username");
						if (username == null) {
					%>
					<li>
						<form action="LoginController" method="post"
							class="navbar-form navbar-right" role="search">
							<div class="form-group">
								<input type="text" class="form-control" name="username"
									placeholder="Username">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="password"
									placeholder="Password">
							</div>
							<button type="submit" class="btn btn-default">Sign In</button>
							<a href="RegisterController" class="btn btn-default"
								role="button"> Sign Up</a>
						</form> <%
 	} else {
 %>
					
					<li><a href="ProfileController?action=profile">Hi, <%=username%></a></li>
					<li><a href="LoginController?action=logout"><span
							class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><span
							class="glyphicon glyphicon-dashboard"></span> Dashboard <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="IndexController?action=index"><span
									class="glyphicon glyphicon-info-sign"></span> Opened issue </a></li>
							<li><a href="CommentController.do?action=closedissue"><span
									class="glyphicon glyphicon-ok-sign"></span> Closed issue</a></li>
						</ul></li>
					<li><a href="ProjectController?action=listProject"><span
							class="glyphicon glyphicon-tasks"></span> Project</a></li>
				</ul>

				<%
					}
				%>
			</div>
		</div>
	</nav>


</body>
</html>