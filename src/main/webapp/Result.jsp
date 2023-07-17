<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core"%><%--jstl --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RESULT</title>
<style type="text/css">
</style>
</head>
<body>
	<h1>Employee Details are</h1>
	<table bordercolor="red" border="1px">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>MOBILE</th>
			<th>SALARY</th>
			<th>DOJ</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
		<spring:forEach var="emp" items="${list }">
			<tr>
				<td>${emp.getId() }</td>
				<td>${emp.getName() }</td>
				<td>${emp.getMobile() }</td>
				<td>${emp.getSalary() }</td>
				<td>${emp.getDoj() }</td>
				<td><a href="edit?id=${emp.getId() }"><button>Edit</button></a></td>
				<td><a href="delete?id=${emp.getId() }"><button>Delete</button>
				</a></td>
			</tr>
		</spring:forEach>

	</table>
	<h2>${msg}</h2>
</body>
</html>