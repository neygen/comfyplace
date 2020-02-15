<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modifica</title>
<style>
body {
	background: linear-gradient(to right, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	font-family: 'Roboto Mono', monospace;
}

input,
span,
label{
  font-family: 'Ubuntu', sans-serif;
  display: block;
  margin: 10px;
  padding: 18px;
  border: none;
  font-size: 22px;
}

input:focus {
  outline: 0;
}
/* Question */

input.question{
  text-align: center; 
  font-size: 105x;
  font-weight: 300;
  border-radius: 2px;
  margin: 0;
  border: none;
  width: 80%;
  background: rgba(0, 0, 0, 0);
  transition: padding-top 0.2s ease, margin-top 0.2s ease;
  overflow-x: hidden; /* Hack to make "rows" attribute apply in Firefox. */
}
/* Underline and Placeholder */

input.question + label{
  display: block;
  position: relative;
  white-space: nowrap;
  padding: 0;
  margin: 0;
  width: 10%;
  border-top: 1px solid red;
  -webkit-transition: width 0.4s ease;
  transition: width 0.4s ease;
  height: 0px;
}

input.question:focus + label{
  width: 20%;
}

input.question:focus,
input.question:valid {
  padding-top: 35px;
}

input.question:focus + label > span,
input.question:valid + label > span {
  top: -100px;
  font-size: 22px;
  color: #333;
}

input.question:valid + label{
  border-color: green;
}

input.question:invalid{
  box-shadow: none;
}

input.question + label > span{
  font-weight: 300;
  margin: 0;
  position: absolute;
  color: #8F8F8F;
  font-size: 48px;
  top: -66px;
  left: 0px;
  z-index: -1;
  -webkit-transition: top 0.2s ease, font-size 0.2s ease, color 0.2s ease;
  transition: top 0.2s ease, font-size 0.2s ease, color 0.2s ease;
}

input[type="submit"] {
  -webkit-transition: opacity 0.2s ease, background 0.2s ease;
  transition: opacity 0.2s ease, background 0.2s ease;
  display: block;
  opacity: 0;
  margin: 10px 0 0 0;
  padding: 10px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background: #EEE;
}

input[type="submit"]:active {
  background: #999;
}

input.question:valid ~ input[type="submit"]{
  -webkit-animation: appear 1s forwards;
  animation: appear 1s forwards;
}

input.question:invalid ~ input[type="submit"]{
  display: none;
}

@-webkit-keyframes appear {
  100% {
    opacity: 1;
  }
}

@keyframes appear {
  100% {
    opacity: 1;
  }
}
</style>
</head>
<body>
<center>

	<sql:setDataSource var="myDS" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/classicmodels?serverTimezone=UTC"
		user="root" password="admin" />

	<sql:query var="myDS" dataSource="${myDS}">
            SELECT * from coffee WHERE idcoffee = ?;
            <sql:param value="${param.idcoffee}" />
	</sql:query>
	<h2 class="tm-section-header">Modifica il prodotto</h2>

	<form action="editdb.jsp" method="post">
		<c:forEach var="row" items="${myDS.rows}">
			<input type="hidden" value="${param.idcoffee}" name="idcoffee" />
			<input type="text" value="${row.name}" name="name" class="question" id="name" required autocomplete="off" //>
			<label for="name"><span>Nome</span></label>
<br>
			<input type="text" value="${row.price}" name="price" class="question" id="price" required autocomplete="off" //>
			<label for="price"><span>Prezzo</span></label>
		</c:forEach>
		<input type="submit" value="Aggiorna" />
	</form>
	</center>
</body>
</html>