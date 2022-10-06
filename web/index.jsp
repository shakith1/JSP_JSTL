<%-- 
    Document   : index
    Created on : Oct 6, 2022, 10:28:07 AM
    Author     : Shakith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            pageContext.setAttribute("abc", "XYZ");
        %>
        
        <c:out value="${abc}"/>
    </body>
</html>
