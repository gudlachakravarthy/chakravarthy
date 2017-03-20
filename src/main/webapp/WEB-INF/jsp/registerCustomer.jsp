<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
 
 <style>
 body{
    
    background-color: lightblue;
    margin-top: 6%;
    margin-bottom: 0%;
    margin-right: 1%;
    margin-left: 1%;
}
.container-wrapper{
  position:relative;
}

code{
position:absolute;

top:25%;
left:5%;
z-index:10;
}   

 </style>
 
</head>
<c:url var="im" value="/resources/Img/sailboat.jpg"></c:url>

<body id="register">
<img src="${im}" style="width:99.9%;margin-top:-2%;height:1500px">
<code>
<div class="container-wrapper">
<div class="container">
 <c:url var="url" value="/all/registerCustomer"></c:url>
 
 <form:form action="${url}" modelAttribute="customer">
    
   <div class="form-group">
     <form:label path="firstname">First Name</form:label>
     <form:input path="firstname" class="form-control"/>
     <form:errors path="firstname"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="lastname">Last Name</form:label>
     <form:input path="lastname"  class="form-control"/>
     <form:errors path="lastname"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="email">Email</form:label>
     <form:input path="email" class="form-control"/>
     <form:errors path="email"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="phonenumber">PhoneNumber</form:label>
     <form:input path="phonenumber" class="form-control"/>
     <form:errors path="phonenumber"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="users.username">UserName</form:label>
     <form:input path="users.username" class="form-control"/>
     <c:out value="${duplicateUsername}"></c:out>
   </div>
   <div class="form-group">
     <form:label path="users.password">Password</form:label>
     <form:input path="users.password" type="password" class="form-control"/>
     <form:errors path="users.password"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.apartmentNumber">ApartmentNumber</form:label>
     <form:input path="billingAddress.apartmentNumber" class="form-control"/>
     <form:errors path="billingAddress.apartmentNumber"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.streetName">StreetName</form:label>
     <form:input path="billingAddress.streetName" class="form-control"/>
     <form:errors path="billingAddress.streetName"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.city">City</form:label>
     <form:input path="billingAddress.city" class="form-control"/>
     <form:errors path="billingAddress.city"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.state">State</form:label>
     <form:input path="billingAddress.state" class="form-control"/>
     <form:errors path="billingAddress.state"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.country">Country</form:label>
     <form:input path="billingAddress.country" class="form-control"/>
     <form:errors path="billingAddress.country"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="billingAddress.zipcode">Zipcode</form:label>
     <form:input path="billingAddress.zipcode" class="form-control"/>
     <form:errors path="billingAddress.zipcode"></form:errors>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.apartmentNumber">ApartmentNumber</form:label>
     <form:input path="shippingAddress.apartmentNumber" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.streetName">StreetName</form:label>
     <form:input path="shippingAddress.streetName" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.city">City</form:label>
     <form:input path="shippingAddress.city" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.state">State</form:label>
     <form:input path="shippingAddress.state" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.country">Country</form:label>
     <form:input path="shippingAddress.country" class="form-control"/>
   </div>
   <div class="form-group">
     <form:label path="shippingAddress.zipcode">ZipCode</form:label>
     <form:input path="shippingAddress.zipcode" class="form-control"/>
   </div>
  
   <input type="submit" value="register" class="btn btn-default"/>
   
 </form:form>

     </div>
   </div>
</code>
</body>
</html>