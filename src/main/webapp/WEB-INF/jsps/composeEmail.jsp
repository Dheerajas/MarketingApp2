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
<title>Email</title>
</head>
<body>
	<div class="container">
		<h2>Compose Email</h2>
		<hr>
		<p>${msg}</p> 
		<form class="row g-3" action="sendEmail" method="post">
			<div class="col-md-12">
				<label for="firstName" class="form-label">To :</label> <input
					type="email" class="form-control" name="to" value="${email}">
			</div>
			<div class="col-md-12">
				<label for="lastName" class="form-label">Subject :</label> <input
					type="text" class="form-control" name="subject">
			</div>
			<div class="col-md-12">
			<label for="floatingTextarea">Body :</label>
				<textarea class="form-control" name="body" rows="10" ></textarea>
			</div>
			<div class="col-2">
				<button type="submit" class="btn btn-primary">Send</button>
			</div>
		</form>
	</div>
</body>
</html>