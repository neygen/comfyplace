<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Eliminazione dato</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
	
	 <sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/classicmodels?serverTimezone=UTC"
                           user="root"  password="admin"/>
        <sql:update dataSource="${myDS}" var="count">
            DELETE FROM coffee
            WHERE idcoffee = '${param.idcoffee}'
        </sql:update>
        <c:if test="${count>=1}">
            <br><br><font size="5" color='green'>Elemento rimosso!</font>   
              
              <c:redirect url="index_admin.jsp">
		</c:redirect>     
        </c:if>
	
</body>
</html>