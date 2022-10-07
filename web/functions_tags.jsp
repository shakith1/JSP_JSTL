<%-- 
    Document   : functions_tags
    Created on : Oct 7, 2022, 10:56:55 AM
    Author     : Shakith
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
                <%
            String data = "name=admin&password=1234";

            pageContext.setAttribute("data", data);

        %>

        <c:forTokens var="x" items="${data}" delims="&">
            <h1>
                <c:set var="ar" value="${fn:split(x, '=')}"/>
                
                Key = ${ar[0]} : Value = ${ar[1]}
            </h1>
        </c:forTokens>
    </body>
</html>
