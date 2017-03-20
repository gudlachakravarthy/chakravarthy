<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Product</title>

<style>
 body {
    background-color: OldLace;
    margin : 9%;
}
 </style>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.2/angular.min.js"></script>
</head>

<body ng-app="app"  ng-controller="ProductController">
<div >
<div class="page-header">
<b>PRODUCT DETAILS</b>
</div>

<table class="table">
<tr>
<td>Product Name</td>
<td>${product.name}</td>
</tr>
<tr>
<td>Product Description</td>
<td>${product.description}</td>
</tr>
<tr>
<td>Price</td>
<td>${product.price}</td>
</tr>
<tr>
<td>Quantity</td>
<td>${product.quantity}</td>
</tr>
<tr>
<td>Date Manufactured</td>
<td>${product.mfg}</td>

            <tr>
			<td>
			</td>
			
			<td><a href="" ng-click="addToCart(${product.id })"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
			</tr>

		</table>
		</div>
	<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
</body>
</html>