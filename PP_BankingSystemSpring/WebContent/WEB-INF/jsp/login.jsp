<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
<div align="center" class="container-fluid">
<h2>Login</h2>
<hr color="red" size="3"/>
<form:form action="ValidateUser.obj" modelAttribute="account">
 Account No:<form:input  path="accountNo" placeholder="accountNo"/><br>
<form:errors path="accountNo"/>
Password:<form:input  path="pinNumber" placeholder="pinNumber" type="password"/><br>
<form:errors path="pinNumber"/><br>
<input type="submit" class="btn btn-primary" value="login"/><br>
</form:form>
</div>
</body>
</html>