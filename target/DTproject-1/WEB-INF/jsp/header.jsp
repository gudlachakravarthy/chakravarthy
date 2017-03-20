<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.2/angular.min.js"></script>
 
  <!-- Main bootstrap -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
 
 <style>
 body .header{
 margin :0;
 padding: 0;
 font-family: Arial Narrow;
 font-size: 20px;
 
 }
 .navbar {
 height : 60px;
 position : fixed;
    background-color: black;
    width: 98%;
    top:10px;
    left:1%;
    padding-bottom:10px;
   z-index:99;
}

 </style>
 <script>
   $(document).ready(function(){
	   
  setInterval(function(){
	  var margin = parseInt($('body').css('margin-top'));
	  window.x = $(window).scrollTop();
	  if(x>=40){
		  $('.navbar').css('top','0');
	  }
	  else{
		  $('.navbar').css('top','10px');
	  }
		  
  },10);
	
   });
   
 </script> 
</head>

<body class="header">
 
<nav class="navbar navbar-default">

 <div class="container-fluid"> 
 
   <div class="navbar-header"> 
   
     <a class="navbar-brand" href="#">Shop Now</a>
   </div>
<ul class="nav navbar-nav navbar-right">

<c:url var="home" value="/home"></c:url>
     <li><a id="uniq" href="${home}" > Home </a></li>

<c:url var="aboutus" value="/aboutus"></c:url>
<li><a href="${aboutus}">About us</a></li>

 <!-- when user logged in -->
    
    <c:if test="${pageContext.request.userPrincipal.name!=null }"> 
        
       <!-- when user is admin show the add products -->       
    <security:authorize access="hasRole('ROLE_ADMIN')">                
     <c:url var="productform" value="/admin/product/productform"></c:url>
     <li><a class="two" href="${productform }"><span class="one">Add New Product</span></a></li>
     </security:authorize>
      
     <c:url var="allproducts" value="/all/product/getallproducts"></c:url>
     <li><a href="${allproducts }"><span class="one">Browse products</span></a></li>
     
     <li class="dropdown">
        <a id="uni" href="" class="dropdown-toggle" data-toggle="dropdown"><span class="on">Select By Category</span><b class="caret"></b></a>  
                     
              <ul class="dropdown-menu">
               <c:forEach var="c" items="${categories}">
                   <c:url var="url1" value="/all/product/productsByCategory?searchCondition=${c.categorydetails}"></c:url>
                  <li><a href="${url1}"><span class="one">${c.categorydetails}</span></a></li>
               </c:forEach>
               </ul>
    </li>
    
     <security:authorize access="hasRole('ROLE_USER')">
    <c:url var="cart" value="/cart/getCartId"></c:url>
    <li><a href="${cart }"><span class="on">Cart</span></a></li>
    </security:authorize>
    
    <li><a href=""><span class="on">welcome ${pageContext.request.userPrincipal.name}</span></a></li>
    </c:if>
    
    <!-- when user not logged in -->
    <c:if test="${pageContext.request.userPrincipal.name==null }">
    <li><a href="<c:url value="/all/registrationForm"></c:url>"><span class="on">Register</span></a></li>
    
     <c:url var="login" value="/login"></c:url>
     <li><a  href="${login}"><span class="on">Login</span></a></li>
     </c:if>
     
    <!-- when user want to log out -->
     <c:if test="${pageContext.request.userPrincipal.name!=null }">
     <li><a href="<c:url value="/j_spring_security_logout"></c:url>"><span class="on">logout</span></a></li>
     </c:if>
     
</ul>
</div>
</nav>
</body>
</html>