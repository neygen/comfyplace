<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
	font-size: 20px;
}

input[type=submit] {
	padding: 15px 20px;
	background: #ccc;
	border: 0 none;
	cursor: pointer;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: 'Josefin Sans', sans-serif;
	font-size: 15px;
}

input[type=reset] {
	padding: 15px 20px;
	background: #ccc;
	border: 0 none;
	cursor: pointer;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: 'Josefin Sans', sans-serif;
	font-size: 15px;
}

input[type=submit]:focus {
	border-color: #fc2003;
}

</style>

</head>
<body>

	<center>
	<form action="insertdb.jsp" method="post">
		<table border="0" cellspacing="2" cellpadding="5">
			<thead>
				<tr>
					<th colspan="2">Inserisci nuovo tipo di coffee</th>
				</tr>
			</thead><br><br>
			<tbody>
				<tr>
					<td><label>Nome</label></td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td><label>Prezzo</label></td>
					<td><input type="text" name="price" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="save" /></td>
					<td><input type="reset" value="reset" /></td>
				</tr>
			</tbody>
		</table>
	</form>
	<font color="red"><c:if test="${not empty param.errMsg}">
			<c:out value="${param.errMsg}" />
			<a href="index_admin.jsp">Go Back</a>
		</c:if></font>
	<font color="green"><c:if test="${not empty param.susMsg}">
			<c:out value="${param.susMsg}" />
			<a href="index_admin.jsp">Go Back</a>
		</c:if></font>
</center>

</body>
</html>