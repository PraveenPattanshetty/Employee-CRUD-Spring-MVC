<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Data</title>
<style type="text/css">
input {
	display: block;
	margin-bottom: 5px;
}

.container {
	width: 33%;
	margin: auto;
}
</style>
</head>
<body>
	<div class="container">
		<spring:form action="saveemployee" method="post"
			modelAttribute="employee">
			<input type="text" placeholder="Enter your Name" name="name">
			<input type="text" placeholder="Enter your Mobile Number"
				name="mobile" maxlength="10">
			<input type="text" placeholder="Enter your Salary" name="salary">
			<input type="date" placeholder="Enter your Date of Joining"
				name="date">
			<button>Save</button>
			<button type="reset">Reset</button>
		</spring:form>
	</div>
</body>
</html>