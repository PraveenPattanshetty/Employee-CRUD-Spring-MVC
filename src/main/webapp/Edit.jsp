<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.container {
	margin-top: 250px;
}

input, button {
	max-width: 450px;
	display: block;
	margin: 10px auto;
	display: block;
}
</style>
</head>
<body>
	<div class="container">
		<spring:form action="updateemployee" method="post"
			modelAttribute="emp">
			<spring:input type="text" path="id" readonly="readonly" />
			<spring:input type="text" path="name" />
			<spring:input type="text" path="mobile" maxlength="10" />
			<spring:input type="text" path="salary" />
			<input type="date" name="date" value="${emp.getDoj() }">
			<button>Update</button>
			<button type="reset">Reset</button>
		</spring:form>
	</div>
</body>
</html>