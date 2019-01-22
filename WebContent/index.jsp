<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Claim Academy</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="./styles/styles.css">
</head>
<body>
	<form class="container" action="RegistrationServlet" method="post">
		<h1>Sign Up Today!</h1>
		<div class="form-group">
			<label for="firstName">First Name</label>
			<input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name">
		</div>
		<br>
		<div class="form-group">
			<label for="lastName">Last Name</label>
			<input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last Name">
		</div>
		<br>
		<div class="form-group">
			<label for="email">E-mail Address</label>
			<input type="text" class="form-control" name="email" id="exampleInputEmail" placeholder="E-mail Address">
		</div>
		<br>
		<div class="form-group">
			<label for="password">Password</label>
			<input type="text" class="form-control" name="password" id="password" placeholder="Password">
		</div>
		<br>
		<div class="form-group">
			<label for="street">Street</label>
			<input type="text" class="form-control" name="street" id="street" placeholder="Street">
		</div>
		<br>
		<div class="form-group">
			<label for="city">City</label>
			<input type="text" class="form-control" name="city" id="city" placeholder="City">
		</div>
		<br>
			<div class="form-group">
			<label for="state">State</label>
			<input type="text" class="form-control" name="state" id="state" placeholder="State">
		</div>
		<br>
		<div class="form-group">
			<label for="zip">ZIP Code</label>
			<input type="text" class="form-control" name="zip" id="zip" placeholder="ZIP Code">
		</div>
		<br>
		<div class="checkbox">
			<label>
				<input type="checkbox" />Check me out.
			</label>
		</div>
		<br>
		<button type="submit" class="btn btn-default">Submit</button>
	</form>
</body>
</html>