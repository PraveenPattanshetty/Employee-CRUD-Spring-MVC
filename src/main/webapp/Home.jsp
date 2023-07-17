<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>
<link rel="stylesheet" type="text/css" href="styles.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<style>
* {
	margin: 0px;
	padding: 0px;
}

body {
	background-color: rgb(234, 255, 255);
	background-image:
}

.container {
	margin: 210px auto;
	border-radius: 15px;
	max-width: 500px;
	background-color: rgb(184, 255, 231);
	padding: 15px;
	box-shadow: 0 0 100px blue;
}

h2 {
	text-align: center;
	color: rgb(125, 78, 7);
	margin: 15px;
	background-color: rgb(117, 206, 239);
	border-radius: 10px;
}

.btn {
	display: flex;
	flex-direction: column;
	margin: auto;
	margin-bottom: 10px;
}

a {
	text-decoration: none;
}

button {
	margin-bottom: 10px;
	width: 150px;
	align-items: center;
}

.btn-danger:hover {
	background-color: red;
	cursor: pointer;
}

.btn-success:hover {
	background-color: green;
	cursor: pointer;
}

.btn-warning:hover {
	background-color: yellow;
	cursor: pointer;
}

h1 {
	text-align: center;
	color: red;
}
</style>
</head>
<body>
	${employee}
	<h1>${msg }</h1>
	<div class="container">
		<h2>Employee CRUD Operations</h2>
		<a href="loademployee">
			<button type="button" class="btn btn-danger">Insert Data</button>
		</a> <a href="fetchall">
			<button type="button" class="btn btn-success">Fetch All Data</button>
		</a> <a href="TakeId.jsp">
			<button type="button" class="btn btn-warning">Fetch Data BY
				Id</button>
		</a>
	</div>
</body>
</html>