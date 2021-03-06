<!DOCTYPE html>
<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>The Issue Tracking</title>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/indexStyle.css">

<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#myPage">Issue Tracking</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="#about">ABOUT</a></li>
					<li><a href="#services">SERVICES</a></li>
					<li><a href="#contact">CONTACT</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form action="LoginController" method="post"
							class="navbar-form navbar-right" role="search">
							<%
							String validate = (String) request.getAttribute("errMessage");
							%>

							<div class="form-group">
								<input type="text" class="form-control" name="username"
									placeholder="Username">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="password"
									placeholder="Password">
							</div>
							<button type="submit" class="btn btn-default">Sign In</button>
						</form>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron text-center">
		<h1>Built for developers</h1>
		<p>The Issue Tracking is a system for manages and maintains lists
			of issues, as needed by an organization</p><br>
			<h2 style="color: #FFFFFF;">Get started for free</h2>
		
		<p>Join the millions of developers already using The Issue Tracking<br> to manage their project, work together, and build amazing things.</p>
		<p>
			<a href="RegisterController" class="btn btn-default btn-lg"
				role="button"> Sign Up</a>
		</p>
	</div>
	
	<div id="about" class="container-fluid">
		<div class="row">
			<div class="col-sm-6 col-sm-push-6">
				<span class="glyphicon glyphicon-send logo"
					style="display: block; text-align: center"></span>
			</div>
			<div class="col-sm-6 col-sm-pull-4">
				<h2>Tracking issue for your project</h2>
				<br>
				<h4>Create, update, and resolve reported an issues.
					Distribution and assignment of issues to persons in charge.</h4>
				<br>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-5 col-sm-offset-1">
				<span class="glyphicon glyphicon-phone logo"
					style="display: block; text-align: center"></span>
			</div>
			<div class="col-sm-5">
				<h2>Easy to communicate with collaborators</h2>
				<br>
				<h4>
					Effective communication is more important than ever
				</h4>
				<br>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6 col-sm-push-6">
				<img src="https://www.img.in.th/images/354d6d7a0babfcb3636988f40910cf57.jpg" class="img-responsive center-block" alt="354d6d7a0babfcb3636988f40910cf57.jpg" border="0">
			</div>
			<div class="col-sm-6 col-sm-pull-4">
				<h2>Connect with GitHub</h2>
				<br>
				<h4>For tracking public repositories on GitHub. <br>Connect via <strong>GitHub API.</strong></h4>
			</div>
		</div>
	</div>

	<div id="services" class="container-fluid text-center">
		<h2>SERVICES</h2>
		<h4>What we offer</h4>
		<br>
		<div class="row slideanim">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-blackboard logo-small"></span>
				<h4>Visual board</h4>
				<p>For organize your project.</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-road logo-small"></span>
				<h4>Milestone</h4>
				<p>Visual road map of your team.</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-tags logo-small"></span>
				<h4>Issue tag</h4>
				<p>You can customize issue tags.</p>
			</div>
		</div>
		<br> <br>
		<div class="row slideanim">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-envelope logo-small"></span>
				<h4>Email</h4>
				<p>Notifying when issues has been changed status.</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-repeat logo-small"></span>
				<h4>Re-open issues</h4>
				<p>When issues closed you can re-open or delete issues.</p>
			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-calendar logo-small"></span>
				<h4 style="color: #303030;">Notifying due date</h4>
				<p>Notifying when issues pass due date.</p>
			</div>
		</div>
	</div>

	<div id="contact" class="container-fluid bg-grey">
		<h2 class="text-center">CONTACT US</h2>
		<div class="row">
			<div class="col-sm-5 slideanim">
				<p>
					<span class="glyphicon glyphicon-map-marker"></span> Prince of Songkla University, phuket Campus 80 moo 1 Vichitsongklam road Kathu Distric Phuket 83120
				</p>
				<p>
					<span class="glyphicon glyphicon-phone"></span> 093-8725493
				</p>
				<p>
					<span class="glyphicon glyphicon-envelope"></span>
					t_tinfinity@hotmail.com
				</p>
			</div>
			<div class="col-sm-7 slideanim">
				<div id="googleMap" style="height: 400px; width: 100%;"></div>
			</div>
		</div>
	</div>

	<script>
		function myMap() {
			var myCenter = new google.maps.LatLng(7.8948615, 98.3529222);
			var mapProp = {
				center : myCenter,
				zoom : 15,
				scrollwheel : true,
				draggable : true,
				mapTypeId : google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(document.getElementById("googleMap"),
					mapProp);
			var marker = new google.maps.Marker({
				position : myCenter
			});
			marker.setMap(map);
		}
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC70AciaLEK7fpXk755XNPnL6JxN3-3PBA&callback=myMap"></script>


	<footer class="container-fluid text-center">
		<a href="#myPage" title="To Top"> <span
			class="glyphicon glyphicon-chevron-up"></span>
		</a>
	</footer>

	<script>
		$(document).ready(
				function() {
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {
								if (this.hash !== "") {
									event.preventDefault();

									var hash = this.hash;

									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {

										window.location.hash = hash;
									});
								}
							});

					$(window).scroll(function() {
						$(".slideanim").each(function() {
							var pos = $(this).offset().top;

							var winTop = $(window).scrollTop();
							if (pos < winTop + 600) {
								$(this).addClass("slide");
							}
						});
					});
				})
	</script>
	<script>
	var a = '<%=validate%>';
	if (a == null || a == 'null'){
		
	}else{
		alert(a);
	}
	</script>

</body>
</html>
