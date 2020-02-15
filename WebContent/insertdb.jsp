<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inserimento effettuato!</title>
</head>
<link rel="stylesheet" href="css/styles.css">
<body>
	
	<c:if test="${ empty param.name or empty param.price}">
            <c:redirect url="insert.jsp" >
                <c:param name="errMsg" value="Please Enter Product and Quantity" />
            </c:redirect>
 
        </c:if>
	
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/classicmodels?serverTimezone=UTC"
		user="root" password="admin" />

	<sql:update dataSource="${snapshot}" var="result">
         INSERT INTO coffee(name, price) VALUES (?, ?);
		<sql:param value="${param.name}" />
		<sql:param value="${param.price}" />
	</sql:update>
	
	<c:if test="${result>=1}">
		<br><br><font size="5" color='green'> Elemento aggiunto corettamente!.</font>

		
		<c:redirect url="insert.jsp">
			<c:param name="susMsg"
				value="Congratulations ! Data inserted
            successfully." />
		</c:redirect>
	</c:if>

</body>
</html>