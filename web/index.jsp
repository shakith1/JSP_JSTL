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

        <c:set value="JSP" var="x"/>

        ${x}

        <jsp:useBean id="user" class="com.infinity.webapp.User"/>

        <c:set value="Admin" property="name" target="${user}"/>

        <h1>${user.name}</h1>
    </body>
</html>
