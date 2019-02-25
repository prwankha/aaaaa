<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="m" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CG Banking System</title>
</head>
<body>
<div align="left"><a href="HomePage.jsp">Home</a></div>
<div align="center">
<h1>CG Banking System</h1>
<hr color="mediumseagreen" size="5" />
<h2>Bank account opened sucessfully</h2><br><br>
<div align="center">User Details are</div><br><br>
	<m:form modelAttribute="account">
<table align="center">
					
         	 <tr> <td>Customer Name :</td><td> ${account.customer.custName}</td></tr>  
            <tr><td>Customer Address :</td><td>${account.customer.custAddress}</td></tr>  
            <tr><td>Customer Mobile No :</td><td>${account.customer.mobNo}</td></tr> 
            <tr><td>Account Balance :</td><td>${account.accountBalance}</td></tr>
            <tr><td>Account Type :</td><td>${account.accountType}</td></tr>   
          	<tr> <td>User Name :</td><td> ${account.accountNo}</td></tr> 
             <tr> <td>Password :</td><td> ${account.pinNumber}</td></tr> 
    </table>
    </m:form>
</div>
</body>
</html>