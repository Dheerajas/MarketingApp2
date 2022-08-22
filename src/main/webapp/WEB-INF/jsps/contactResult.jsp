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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<title>Contact</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2>Contacts</h2>
			<div class="table table-responsive ">
				<table class="table table-bordered">
					<tr style="background-color: #e3f2fd;">
						<th>Id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Lead Source</th>
						<th>Billing</th>
					</tr>
					<c:forEach items="${contacts}" var="contact">
						<tr>
							<td>${contact.id}</td>
							<td>${contact.firstName}</td>
							<td>${contact.lastName}</td>
							<td>${contact.email}</td>
							<td>${contact.mobile}</td>
							<td>${contact.leadSource}</td>
							<td><a href="getContactById?id=${contact.id}">Billing</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

</body>
</html>