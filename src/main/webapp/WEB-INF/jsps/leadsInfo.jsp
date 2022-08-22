<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="home.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"  ></script>
	
<title>Lead Info</title>
</head>
<body>
	<div class="container">
		<div class="row m-2">
			<div class="col-2">
				<a href="create" class="btn btn-primary">Create Lead</a>
			</div>
		</div>

		<div class="row">
			<div class="table table-responsive ">
				<table class="table table-bordered">
					<tr style="background-color: #e3f2fd;">
						<th>Id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Lead Source</th>

					</tr>
					<c:forEach items="${leads}" var="leads">
						<tr>
							<td>${leads.id}</td>
							<td><a href="findById?id=${leads.id}">${leads.firstName}</a></td>
							<td>${leads.lastName}</td>
							<td>${leads.email}</td>
							<td>${leads.mobile}</td>
							<td>${leads.leadSource}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>