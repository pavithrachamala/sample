<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CustomerAccount</title>
<style type="text/css">
	.errors{
		color:red;
		font-family: Calibri;
		font-style: italic;
	}
</style>
</head>
<body>
<center><h1>welcome ${emp.email}</h1></center>
<center>
	<form:form action="addcustomer" method="post" modelAttribute="customer">
		<form:hidden path="id"/>
		Enter name: <form:input path="name"/><form:errors path="name" class="errors"/><br/><br/>
		Enter address: <form:input path="address"/><form:errors path="address" class="errors"/><br/><br/>
		Enter Acno: <form:input path="acno"/><form:errors path="acno" class="errors"/><br/><br/>
		Enter Balance: <form:input path="balance"/><form:errors path="balance" class="errors"/><br/><br/>
		<center>
		<input type="submit"/>
		</center>
	</form:form>
</center>


</body>
</html>