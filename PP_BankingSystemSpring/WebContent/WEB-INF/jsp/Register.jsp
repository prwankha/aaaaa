<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
<div align="left"><a href="HomePage.jsp">Home</a></div>
<div align="center">
 <form:form action="OpenAccount.obj" method="post" modelAttribute="cust">
Customer Name:<form:input path="custName"/><br>
Customer Address:<form:input path="custAddress"/><br>
Customer Mobile No:<form:input path="MobNo"/><br>
			
             <input type="submit" class="btn btn-primary" value="Add Customer"/><br> 
             <input type="reset" class="btn btn-primary" value="Reset"/>       
</form:form>
</div>
<h1>${msg}</h1>
</body>
</html>