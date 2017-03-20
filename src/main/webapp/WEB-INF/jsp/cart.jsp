<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>

<style>
 body {
    background-color: OldLace;
    margin-top: 9%;
    margin-bottom: 1%;
    margin-right: 3%;
    margin-left: 3%;
}
table{
  margin-top:2%;
  width:100%;
}
 
 </style>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>

<body >
  <div id="cart">
 <div ng-app="app"  ng-controller="ProductController">
   <div ng-init="getCart(${cartId })">
   <a href="" class="btn btn-success pull-right">Check Out</a>
  
      <table class="ance">
        <thead>
        <tr>
          <th >Product</th>
           
          <th >Name</th>
          
          <th >Quantity</th>
          
          <th >Total Price</th>
          
          <th >Remove</th>
          
        </tr>
        </thead>
        <a href="" class="btn btn-danger" pull-left ng-click="clearCart()">ClearCart</a>
       <tr ng-repeat="ca in cart.cartItems">
       <td>
       <c:url var="sr" value="/all/product/image/{{ca.product.id}}"></c:url>
  <img src="${sr }" height="150px" width="150px"/>
       
       </td>
       <td>{{ca.product.name}}</td>
       
       <td>{{ca.quantity}}</td>
       
       <td>{{ca.totalPrice}}</td>
       
       <td><a href="" class="btn btn-danger" pull-left ng-click="removeFromCart(ca.id)">Remove</a></td>
   </tr>
   </table>
   Total Price:{{calculateGrandTotal()}}  
   </div>
   </div>
   </div>
   
</body>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
</html>