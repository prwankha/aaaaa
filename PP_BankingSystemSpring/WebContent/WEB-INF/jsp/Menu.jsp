<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="m" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
</head>
<body>
<div align="center">
<h3>Welcome :${account.customer.custName }</h3></div>
<div align="left"><a href="HomePage.jsp">Home</a></div>
<div align="center">

Account number : ${account.accountNo}<br>
Account Balance :${account.accountBalance}<br>
  
	<div align="center">
	<m:form action="withdraw.obj" modelAttribute="account" method="post">
	<m:input type="hidden" path="accountNo" readonly="true"/><br>
	<input class="btn btn-primary " type="submit" value="Withdraw Amount"><br>
	</m:form>
	
	
	
	<m:form action="deposit.obj" modelAttribute="account" method="post">
	<m:input type="hidden" path="accountNo" readonly="true"/><br>
	<input class="btn btn-primary" type="submit" value="Deposit Amount"><br>
	</m:form>
	
	
	<m:form action="transfer.obj" modelAttribute="account" method="post">
	<m:input type="hidden" path="accountNo" readonly="true"/><br>
	<input class="btn btn-primary" type="submit" value="Transfer Fund"><br>
	</m:form>
	
	
	<m:form action="display.obj" modelAttribute="account" method="post">
	<m:input type="hidden" path="accountNo" readonly="true" /><br>
	<input class="btn btn-primary" type="submit" value="Display Account"><br>
	</m:form>
	
	</div></div>
</body>
</html>