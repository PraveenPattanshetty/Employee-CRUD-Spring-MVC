<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fetch By Id</title>
</head>
<body>
	<h1>Employee Details are</h1>
	<table bordercolor="red" border="1px">
		<h2>${emp }</h2>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>MOBILE</th>
			<th>SALARY</th>
			<th>DOJ</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
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
	</table>
</body>
</html>