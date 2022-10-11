<%-- 
    Document   : error
    Created on : Oct 3, 2022, 11:08:06 AM
    Author     : Shakith
--%>
<%--<%@page isErrorPage="true"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h1>Error!</h1>
        <jsp:useBean id="now2" class="java.util.Date"/>
        <fmt:formatDate value="${now2}" type="both"/>
    </body>
</html>
