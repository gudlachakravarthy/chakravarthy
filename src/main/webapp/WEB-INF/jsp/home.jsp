<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<%@ include file="header.jsp" %>

<html>
<head>

<title>Home</title>

<style>
 body {
    background-color: HoneyDew;   
    margin-top: 6%;
    margin-bottom: 1%;
    margin-right: 1%;
    margin-left: 1%;
}
h2{
position:absolute;

top:20%;
left:40%;
z-index:10;
}

h3{
position:absolute;
top : 30%;
left: 33%

}

h4{
position:absolute;
top : 40%;
left: 36%

}

 </style>

</head>
 
<c:url var="im" value="/resources/Img/sailboat.jpg"></c:url>

<body >

<img src="${im}" style="width:99.9%;margin-top:-2%;">
<h2 align="center">I Am Who I Am!</h2>
<h3 align="center">With Passion For Real, Good Products</h3>
<h4 align="center">Choose A Pricing Plan That Fits Your Needs</h4>
</body>
</html>
<%@ include file="footer.jsp"%>
