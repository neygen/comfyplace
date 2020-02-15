<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modifica effettuata!</title>
<style>
body {
	background: linear-gradient(to right, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	font-family: 'Roboto Mono', monospace;
}

</style>
</head>
<body>

	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/classicmodels?serverTimezone=UTC"
		user="root" password="admin" />

	<sql:update dataSource="${dbsource}" var="count">
            UPDATE coffee SET name = ?, price = ?
            WHERE idcoffee='${param.idcoffee}'
            <sql:param value="${param.name}" />
		<sql:param value="${param.price}" />
	</sql:update>
	
	
	<c:if test="${count>=1}">
            <font size="5" color='green'> Congratulazioni, dati aggiornati correttamente!</font>
              <a href="index_admin.jsp">Ritorna</a>   
        </c:if>
</body>
</html>