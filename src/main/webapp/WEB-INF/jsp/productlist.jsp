
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of Product</title>

<style>
 body {
    background-color: HoneyDew;
     margin-top: 6%;
    margin-bottom: 1%;
    margin-right: 1%;
    margin-left: 1%;
}

form{
position:absolute;
top:25%;
left:5%;
z-index:10;
}   

 </style>

</head>
<c:url var="im" value="/resources/Img/sailboat.jpg"></c:url>
<script>
$(document).ready(function(){
    var searchCondition = '${searchCondition}';
    $(".table").DataTable({
    	"dom":' <"search"f><"top"l>rt<"bottom"ip><"clear">',
    	"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],      //"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
    	"oSearch":{"sSearch":searchCondition}
    });
});
</script>

<body>
<img src="${im}" style="width:99.9%;margin-top:-2%;">
<form>
<div class ="container">
<table class="table table-striped">
<thead> 
<tr>
<th>Image</th>
<th> Product Name</th>
<th> Description</th>
<th> Category Details</th>
<th>View</th>
<security:authorize access="hasRole('ROLE_ADMIN')">  
<th>Delete</th>
<th>Edit</th>
</security:authorize>
</tr>
</thead>

<c:forEach var="p" items="${products }">
<tr>
<td>
<c:url var="sr" value="/all/product/image/${p.id}"></c:url>
<img src="${sr }" height="100px" width="100px"/>
</td>

<td>${p.name}</td>
<td>${p.description}</td>
<td>${p.category.categorydetails}</td>

<td>
<c:url var="view" value="/all/product/viewproduct/${p.id}"></c:url>
<a href="${view}"><span class="glyphicon glyphicon-info-sign"></span></a>
</td>
<security:authorize access="hasRole('ROLE_ADMIN')">
<td>
<c:url var="delete" value="/admin/product/deleteproduct/${p.id}"></c:url>
<a href="${delete}"><span class="glyphicon glyphicon-remove"></span></a>
</td>

<td>
<c:url var="edit" value="/admin/product/editform/${p.id}"></c:url>
<a href="${edit}"><span class="glyphicon glyphicon-pencil"></span></a>
</td>
</security:authorize>

</tr>
</c:forEach>
</table>
</div>
</form>
</body>
</html>