<%-- 
    Document   : sql_tags
    Created on : Oct 11, 2022, 10:27:12 AM
    Author     : Shakith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/abc" 
                           user="root" 
                           password="1234"/>
        ${db}
    </body>
</html>
