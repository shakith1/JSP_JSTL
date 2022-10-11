<%-- 
    Document   : sql_tags
    Created on : Oct 11, 2022, 10:27:12 AM
    Author     : Shakith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/abc?useSSL=false" 
                           user="root" 
                           password="1234"/>
        ${db}

        <sql:query var="result" dataSource="${db}">
            SELECT * FROM `user`
        </sql:query>

        <c:forEach var="rs" items="${result.rows}">
            ${rs.nic}<br/>
        </c:forEach>
            
            <sql:update sql="UPDATE product SET name=?,brand=? WHERE id=?" dataSource="${db}">
                <sql:param value="Biscuit"/>
                <sql:param value="Maliban"/>
                <sql:param value="1"/>
            </sql:update>
    </body>
</html>
