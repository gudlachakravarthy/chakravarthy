<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/jsp/header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:url var="style1" value="/resources/css/cancelCheckout.css"></c:url>
  <link rel="stylesheet" href="${style1}"/> 
<style>
   body{
       margin-top:20%;
    }
    h1{
      font-size:50px;
      font-weight:bold;
      opacity:0.9;
      text-transform:uppercase;
    }
</style>
</head>
<body>
    <h1>Your order has been Cancelled!!</h1>
</body>
</html>