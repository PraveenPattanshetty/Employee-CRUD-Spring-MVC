<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Take Id</title>
<style type="text/css">
* {
	box-sizing: border-box;
	margin: 0px;
}

.container {
	width: fit-content;
	height: fit-content;
	padding: 5px;
}
</style>
</head>
<body>
	<div class="container">
		<form action="findbyid">
			<input placeholder="Enter The ID" name="id">
			<button>Submit</button>
			<button type="reset">Reset</button>
		</form>
	</div>
</body>
</html>