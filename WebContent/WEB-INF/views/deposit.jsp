<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Money Deposition</title>
<style type="text/css">
.errors{
color: red;
font-family: calibri;
font-style: italic;
}
</style>
</head>
<body>
<center>
<form:form action="deposit" method="post" modelAttribute="formbean">
	Enter Account No:<form:input path="acno"/><form:errors path="acno" class="errors"/>
	Enter Amount:<form:input path="amount"/>
	<center>
	<input type="submit"/>
	</center>
	</form:form>
	
</center>

</body>
</html>