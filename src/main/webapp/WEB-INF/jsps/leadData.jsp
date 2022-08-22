<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="home.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Lead</title>
</head>
<body>
	<div class="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container justify-content-end">
				<form action="compose" method="post">
					<input class="form-control" hidden="true" name="email" value="${leads.email}">
					<button class="btn btn-outline-success m-2" type="submit">Send
						Email</button>
				</form>
				<form action="convertLead" method="post">
					<input class="form-control" type="search" hidden="true" name="id" value="${leads.id}">
					<button class="btn btn-outline-success" type="submit">Convert</button>
				</form>
			</div>
		</nav>
		<div class="row">
			<div class="table table-responsive ">
				<table class="table">
					<tr>
						<th>Id</th>
						<td>${leads.id}</td>
					</tr>
					<tr>
						<th>First Name</th>
						<td>${leads.firstName}</td>
					</tr>
					<tr>
						<th>Last Name</th>
						<td>${leads.lastName}</td>
					</tr>
					<tr>
						<th>Email</th>
						<td>${leads.email}</td>
					</tr>
					<tr>
						<th>Mobile</th>
						<td>${leads.mobile}</td>
					</tr>
					<tr>
						<th>Lead Source</th>
						<td>${leads.leadSource}</td>
					</tr>


				</table>
			</div>
		</div>
	</div>
</body>
</html>