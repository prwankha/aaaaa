<%@taglib prefix="m" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
<div align="center">
  <h1>Account Details:</h1><br><br><br>
${message1}<br>
<table align="center">
					
         	 <tr> <td>Customer Name :</td><td> ${account.customer.custName}</td></tr>  
            <tr><td>Customer Address :</td><td>${account.customer.custAddress}</td></tr>  
            <tr><td>Customer Mobile No :</td><td>${account.customer.mobNo}</td></tr> 
            <tr><td>Account Balance :</td><td>${account.accountBalance}</td></tr>
            <tr><td>Account Type :</td><td>${account.accountType}</td></tr>   
          	<tr> <td>User Name :</td><td> ${account.accountNo}</td></tr> 
             <tr> <td>Password :</td><td> ${account.pinNumber}</td></tr> 
    </table>
<b>Transactions:</b><br><br>
<table align="center"><tr><th>TransactionId:</th><th>Amount:</th><th>TransactionType</th></tr>
<j:forEach var="tran" items="${account.transactions}">
	<tr><td>${tran.transactionId}</td>
	<td>${tran.amount}</td>
	<td>${tran.transactionType}</td></tr>
	
</j:forEach>
</table>
${message}
</div>
</body>
</html>