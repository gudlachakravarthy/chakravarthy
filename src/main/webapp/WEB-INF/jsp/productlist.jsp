<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of Product</title>
</head>

</head>
<script>
$(document).ready(function(){
    var searchCondition = '${searchCondition}';
    $(".table").DataTable({
    	"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],      //"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
    	"oSearch":{"sSearch":searchCondition}
    });
});
</script>

<body>
<div class ="container">
<table class="table table-striped">
<thead> 
<tr>
<th>Image</th>
<th> Product Name</th>
<th> Description</th>
<th> Category Details</th>
<th>View/Delete/Edit</th>
</tr>
</thead>

<c:forEach var="p" items="${products }">
<tr>
<td>
<c:url var="sr" value="/resources/images/${p.id}.png"></c:url>
<img src="${sr }" height="100px" width="100px"/>
</td>
<td>${p.name}</td>
<td>${p.description}</td>
<td>${p.category.categorydetails}</td>
<td>
<c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
<a href="${ url}"><span class="glyphicon glyphicon-info-sign"></span></a>
<c:url var="delete" value="/admin/product/deleteproduct/${p.id}"></c:url>
<a href="${delete}"><span class="glyphicon glyphicon-remove"></span></a>
<c:url var="edit" value="/admin/product/editform/${p.id}"></c:url>
<a href="${edit}"><span class="glyphicon glyphicon-pencil"></span></a>
</td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>