<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALL CUSTOMERS</title>
</head>
<body>
	<center>
		<h1>${emp.email}</h1>
	</center>
	<br/>

	<center>
		<h2>
			<a href="logout">logout</a>
		</h2>
	</center>
	<br/>
	<div class="container"></div>
	<div class="row"></div>
	<div class="col-sm-6"></div>
<center>
	<table border="2" >
		<thead>
			<tr>
				<th>id</th>
				<th>name</th>
				<th>address</th>
				<th>acno</th>
				<th>balance</th>

				
				<c:if test="${emp.profile == 'admin'}">
				
				<th>update</th>
				</c:if>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customers}" var="customer">
				<tr>
					<td>${customer.id}</td>
					<td>${customer.name}</td>
					<td>${customer.address}</td>
					<td>${customer.acno}</td>
					<td>${customer.balance}</td>
					
					<%-- <td>${book.pubDate}</td> --%>
					<c:if test="${emp.profile == 'admin'}">
						<td><a href="update?id=${customer.id}">update</a></td>
						<center><h2><a href="withdraw">withdraw</a></h2></center>
					</c:if>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</center>
	<br/>
	
	<c:if test="${emp.profile == 'admin' || emp.profile == 'mgr'}">
		<center><h2><a href="addcustomer">addcustomers</a></h2></center>
		<center><h2><a href="deposit">deposit</a></h2></center>
		
			<center><h2><a href="transfer">transfer</a></h2></center>
	</c:if>
	
	
</body>
</html>