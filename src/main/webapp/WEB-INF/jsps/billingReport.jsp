<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
	name="viewport">
<meta content="ie=edge" http-equiv="X-UA-Compatible">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Bill Report</title>
</head>
<body class="flex items-center justify-center h-screen">
<div class="container">
	<div class="rounded-lg border shadow-lg p-10 w-3/5">
		<div class="flex flex-row justify-between pb-4">
			<div>
				<h2 class="text-xl font-bold">
					Order #<span class="text-green-600">My Order</span>
				</h2>
			</div>
			<div>
				<div class="text-xl font-bold">Date</div>
			</div>
		</div>
		<div class="flex flex-col pb-8">
			<div class="pb-2">
				<h2 class="text-xl font-bold">Delivery Address</h2>
			</div>
			<div>Btm layout</div>
			<div>8th Cross</div>
			<div>Near MAdina Masjid</div>
			<div>Sri Srinivasa PG</div>

		</div>
		<table class="table-fixed w-full text-right border rounded">
			<thead class="bg-gray-100">
				<tr>
					<th class="text-left pl-4">Product</th>
					<th>Price</th>
					<th class="pr-4">Total</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="pl-4 text-left">${report.productName}</td>
					<td>${report.price}</td>
					<td></td>
					<td class="pr-4"></td>
				</tr>
			</tbody>
		</table>
		<div class="flex flex-row-reverse p-5">
			<h2 class="font-medium  bg-gray-200 p-2 rounded">
				Grand Total: <span class="text-green-600"></span>
			</h2>
		</div>
		<h2 class="text-xl font-bold">Payment Details</h2>
		<table class="table-fixed text-left w-2/6 border">
			<tr>
				<th class="text-green-600">Card Number</th>
				<td></td>
			</tr>
			<tr>
				<th class="text-green-600">CVV</th>
				<td></td>
			</tr>

		</table>
	</div>
</div>
</body>
</html>