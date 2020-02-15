<%@ page language="java" contentType="text/html; 
charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registrazione effettuata</title>
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
	padding: 25px 55px;
	background: #ccc;
	border: 0 none;
	cursor: pointer;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: 'Josefin Sans', sans-serif;
	font-size: 20px;
}

input[type=submit]:focus {
	border-color: #fc2003;
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

	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	%>
	<%
		if (username == null || username.length() == 0) {
	%>
	<jsp:include page="index.jsp" />
	<%
		out.print("ACCESSO NEGATO");
		} else if (username.equals("admin") && password.equalsIgnoreCase("admin")) {
	%>
	<h3>Login effettuato corettamente!</h3>
	<br> Benvenuto
	<%=request.getParameter("username")%>
	<form action="index_admin.jsp">			
	<h5>Clicca qui per accedere al database<h5>
	<input type="submit" value="Crea - Elimina - Modifica">
	<%
		} else {
	%>
	<jsp:include page="index.jsp" />
	<%	
		out.print("ACCESSO NEGATO");
		
	%>
<% } %>
	

</body>
</html>