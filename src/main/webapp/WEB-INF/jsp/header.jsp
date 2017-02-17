<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  
  <!-- DataTables -->
  <link rel="stylesheet" href="//cdn.datatables.net/1.10.1/css/jquery.dataTables.css"/>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="//cdn.datatables.net/1.10.1/js/jquery.dataTables.js"></script>    
  
  <!-- Calendar -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
  <!-- Main bootstrap -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  

</head>

<body>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
   <div class="navbar-header">
     <a class="navbar-brand" href="#">CyberMart</a>
   </div>

<ul class="nav navbar-nav">

<c:url var="home" value="/home"></c:url>
     <li><a id="uniq" href="${home}">Home</a></li>

<c:url var="aboutus" value="/aboutus"></c:url>
<li><a href="${aboutus}">about us</a></li>

<c:url var="productform" value="/admin/product/productform"></c:url>
<li><a href="${productform}">Add new product</a></li>

 <c:url var="getallproducts" value="/all/product/getallproducts"></c:url>
<li><a href="${getallproducts }">Browse products</a></li>

<li class="dropdown">
  <a id="uni" href="" class="dropdown-toggle" data-toggle="dropdown"><span id="on">Select By Category</span><b class="caret"></b></a>  
   <ul class="dropdown-menu">
       <c:forEach var="c" items="${categories}">
       <c:url var="url1" value="/all/product/productsByCategory?searchCondition=${c.categorydetails}"></c:url>
       <li><a href="${url1}"><span id="one">${c.categorydetails}</span></a></li>
       </c:forEach>
   </ul>
</li>

</ul>
</div>
</nav>
</body>
</html>