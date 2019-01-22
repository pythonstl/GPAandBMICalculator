<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.user.Student"%>
<%Student student = (Student)session.getAttribute("student");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>G.P.A. and B.M.I.</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<!-- navbar --> 
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation.</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Welcome to <% out.print(student.getSchoolName()); %>!</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="index.jsp">INDEX</a></li>
					<li><a href="course.jsp">Add Course</a></li>
				</ul>
			</div>
		</div>
	</nav> 
	<!-- /navbar -->

	<!-- main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Hello, <% out.print(student.getFirstName()); %>!</h1>
			<p>This is a simple Java servlet program for a functional web site.</p>
		</div>
	</div>
	<!-- /jumbotron -->
	
	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h2>Enter grades.</h2>
				<form action="GpaServlet" method="post">
					<div class="form-group">
						<label for="gradeOne">Grade One</label>
						<input type="text" class="form-control" name="gradeOne" id="gradeOne" placeholder="Grade One">
					</div>
					<div class="form-group">
						<label for="gradeTwo">Grade Two</label>
						<input type="text" class="form-control" name="gradeTwo" id="gradeTwo" placeholder="Grade Two">
					</div>
					<div class="form-group">
						<label for="gradeTwo">Grade Three</label>
						<input type="text" class="form-control" name="gradeThree" id="gradeThree" placeholder="Grade Three">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
			<div class="col-md-6">
				<h2>My G.P.A.</h2>
				<h1><% out.print(student.getGpa()); %></h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<h2>Enter height and weight.</h2>
				<form action="BmiServlet" method="post">
					<div class="form-group">
						<label for="height">Height</label>
						<input type="text" class="form-control" name="height" id="height" placeholder="Your Height in Inches">
					</div>
					<div class="form-group">
						<label for="weight">Weight</label>
						<input type="text" class="form-control" name="weight" id="weight" placeholder="Your Weight in Lbs.">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
			<div class="col-md-6">
				<h2>My B.M.I.</h2>
				<h1><% out.print(student.getBmi()); %></h1>
			</div>
		</div>
	</div> 
	<!-- /container -->
	
	<hr>
	<footer class="text-center">
			<p>&copy; 2018 Company, Inc.</p>
	</footer>
</body>
</html>