<%@taglib prefix="m" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
	<div align="center">
		<h1>CG Banking System</h1><br><br>
		<hr color="mediumseagreen" size="5" />
		<h3>Your are registered sucessfully.</h3><br>
		<h2 align="center">Enter Details to Open Account</h2><br><br>
		<m:form action="AcceptAccountDetails.obj" modelAttribute="acc"
			method="post">
			<table class="sucess" border="1" >
<!-- 			<tr> -->
<!-- 				<td>Enter your name</td> -->
<%-- 				<td><m:input path="customer.custName"/></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>Enter your address</td> -->
<%-- 				<td><m:input path="customer.custAddress"/></td> --%>
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>Enter your mobile No</td> -->
<%-- 				<td><m:input path="customer.mobNo"/></td> --%>
<!-- 			</tr> -->
				<tr>
					<td>Enter Initial Balance</td>
					<td><m:input path="accountBalance" /></td>
				</tr>
				
				<tr>
					<td>Choose Account Type</td>
					<td>Savings <m:radiobutton value="Savings"
							path="accountType" /> Current <m:radiobutton value="Current"
							path="accountType" /> Salary <m:radiobutton value="Salary"
							path="accountType" /></td>
				</tr>
			</table>
					<input type="submit" class="btn btn-primary" value="submit"/><br>
					<input type="reset" class="btn btn-primary"  value="Reset">
			
		</m:form>
		${msg}
	</div>
</body>
</html>