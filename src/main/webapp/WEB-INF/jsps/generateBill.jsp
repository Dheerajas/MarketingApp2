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
<title>Bill</title>
</head>
<body>
	<div class="container">
		<h2>Billing</h2>
		<hr>
		 <form class="row g-3" action="saveBill" method="post">
			<div class="col-md-6">
				<label for="firstName" class="form-label">First Name</label> <input
					type="text" class="form-control" name="firstName" value="${contacts.firstName}">
			</div>
			<div class="col-md-6">
				<label for="lastName" class="form-label">Last Name</label> <input
					type="text" class="form-control" name="lastName" value="${contacts.lastName}">
			</div>
			<div class="col-md-6">
				<label for="email" class="form-label">Email</label> <input
					type="email" class="form-control" name="email" value="${contacts.email}">
			</div>
			<div class="col-md-6">
				<label for="mobile" class="form-label">Mobile</label> <input
					type="text" class="form-control" name="mobile" value="${contacts.mobile}">
			</div>

			<div class="col-md-12">
				<label for="leadSource" class="form-label">Lead Source</label> <select
					name="leadSource"  class="form-select">
					<option >${contacts.leadSource}</option>
					<option>Ads</option>
					<option>Social Sites</option>
					<option>Email</option>
					<option>News</option>
				</select>
			</div>
 			<div class="col-md-12">
				<label for="productName" class="form-label">Product Name</label> <input
					type="text" class="form-control" name="productName"  >
			</div>
			<div class="col-md-12">
				<label for="price" class="form-label">Price</label> <input
					type="text" class="form-control" name="price"  >
			</div>
			<div class="col-sm-2">
				<button type="submit" class="btn btn-primary">GenerateBill</button>
			</div>
			

		</form>
	</div>
</body>
</html>