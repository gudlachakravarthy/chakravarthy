<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Form</title>

<style>
 body {
    background-color: SeaShell;
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

<script>
  $(function(){
	  $('input[name=mfg]').datepicker({
		 format:'YYYY-mm-dd' 
	  });
  });
</script> 
  
</head>
<c:url var="im" value="/resources/Img/sailboat.jpg"></c:url>
<body>
<img src="${im}" style="width:99.9%;margin-top:-2%;">
<form>
 <div class="container-wrapper"> 
  <div class="container">
  <c:url var="addAction" value="/admin/product/addproduct"></c:url>
  <form:form id="registerForm" modelAttribute="product" method="post" action="${addAction}" enctype="multipart/form-data">
  <div class="form-group">
   <label for="id"></label>
   <form:hidden path="id"/>
  </div>
  
  <div class="form-group">
   <label for="name">product name</label>
   <form:input path="name" class="form-control"/>
   <form:errors path="name" cssStyle="color:#ff0000"></form:errors>
  </div>
  
  <div class="form-group">
   <label for="description">Description</label>
   <form:input path="description" class="form-control"/>
   <form:errors path="description" cssStyle="color:#ff0000"></form:errors>
  </div>
  
  <div class="form-group">
   <label for="price" >Price</label>
   <form:input path="price" class="form-control"/>
   <form:errors path="price" cssStyle="color:#ff0000"></form:errors>
  </div>
  
  <div class="form-group">
   <label for="quantity">Qunatity</label>
   <form:input path="quantity" class="form-control"/>
  </div>
     
  <div class="form-group">
   <label for="mfg">Date</label>
   <form:input path="mfg" type ="Date" class="form-control"/>
  </div>

  <div class="form-group">
   <label for="category">Category</label>
    <c:forEach var="c" items="${categories}">
    <form:radiobutton path="category.id" value="${c.id }"/>${c.categorydetails}
    </c:forEach>
  </div>
 
  <div class="form-group">
   <label for="image">Image</label>
   <input name="fileUpload" type="file"/>
  </div>


  <input type="submit" value="Add Product" class="btn btn-default">
   
  </form:form>
  </div>
 </div>
 </form>
</body>
</html>