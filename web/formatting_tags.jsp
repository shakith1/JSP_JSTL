<%-- 
    Document   : formatting_tags
    Created on : Oct 7, 2022, 11:54:29 AM
    Author     : Shakith
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <c:set var="x" value="120000.2309"/>
        
        <fmt:formatNumber value="${x}" type="currency" currencyCode="EUR"/>
    </body>
</html>
