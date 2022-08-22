<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Lead</title>
</head>
<body>
	<div class="container">
		<h2 class="text-center">CREATE LEAD</h2>
		<hr>
		<p>${msg}</p>
		<form class="row g-3" action="createLead" method="post">
			<div class="col-md-6">
				<label for="firstName" class="form-label">First Name</label> <input
					type="text" class="form-control" name="firstName" placeholder="First Name">
			</div>
			<div class="col-md-6">
				<label for="lastName" class="form-label">Last Name</label> <input
					type="text" class="form-control" name="lastName" placeholder="Last Name">
			</div>
			<div class="col-md-12">
				<label for="email" class="form-label">Email</label> <input
					type="email" class="form-control" name="email" placeholder="Email">
			</div>
			<div class="col-md-12">
				<label for="mobile" class="form-label">Mobile</label> <input
					type="text" class="form-control" name="mobile" placeholder="Mobile">
			</div>

			<div class="col-md-12">
				<label for="leadSource" class="form-label">Lead Source</label> <select
					name="leadSource" class="form-select">
					<option selected>Choose...</option>
					<option>Ads</option>
					<option>Social Sites</option>
					<option>Email</option>
					<option>News</option>
				</select>
			</div>

			<div class="col-2">
				<button type="submit" class="btn btn-primary">Create Lead</button>
			</div>
			

		</form>
	</div>
</body>
</html>