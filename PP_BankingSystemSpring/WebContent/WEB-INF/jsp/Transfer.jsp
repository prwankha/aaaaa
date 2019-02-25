<%@taglib prefix="m" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transfer Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
<div align="center">
  <h1>Fund Transfer</h1><br><br><br>
<m:form action="transfer1.obj" modelAttribute="account" method="post">
<m:input path="accountNo" type="hidden"/><br>
<table><tr><td>
Enter Transfer Account number:</td>
<td><input type="text" name="taccount"/></td></tr>
<tr><td>Enter Transfer amount:</td>
<td><input type="text" name="amount"/></td></tr></table>
Current Balance:${account.accountBalance}<br><br>
<input type="submit" value="submit" class="btn btn-primary"/>
</m:form>
${message}
<h4>${amountmessage}</h4>
<a href=LoginPage.obj >Back</a>
</div>
</body>
</html>