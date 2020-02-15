<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form</title>

<style>
body {
	background-image:
		url("https://s3.envato.com/files/211895376/JPEG/07.jpg");
	text-align: center;
	font-family: 'Raleway', sans-serif;
	font-size: 25px;
}

h3 {
	font-family: 'Josefin Sans', sans-serif;
	font-size: 30px;
}

input[type=submit] {
	width: 150px;
	padding: 2px;
	margin: 8px;
}
</style>

<link
	href="https://fonts.googleapis.com/css?family=Raleway&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap"
	rel="stylesheet">

</head>
<body>
	<h3>FORM</h3>
	<form action="userpwd.jsp" method="post">
		Username:<br> <input type="text" name="username"><br>
		Password:<br> <input type="password" name="password"> <br>
		<input type="checkbox" name="ricordami" value="remember">
		Ricordami <br>
		<input type="submit" value="Submit">
	</form>


</body>
</html>