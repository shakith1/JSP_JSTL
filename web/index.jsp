<%-- 
    Document   : index
    Created on : Oct 6, 2022, 10:28:07 AM
    Author     : Shakith
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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

        <!--   Bean Property   -->

        <jsp:useBean id="user" class="com.infinity.webapp.User"/>

        <c:set value="Admin" property="name" target="${user}"/>

        <h1>${user.name}</h1>

        <!--   Map Property   -->

        <jsp:scriptlet>
            Map map = new HashMap();
            pageContext.setAttribute("map", map);
        </jsp:scriptlet>

        <c:set value="PHP" property="name" target="${map}"/>
        ${map.name}

        <!--Import--> 

        <%--<c:import url="https://www.google.com" var="data"/>--%>
        <!--${data}-->

        <c:import url="https://www.google.com" var="data">
            <c:param name="hl" value="si"/>
            <%--<c:param name="type" value="admin"/>--%>
        </c:import>

        <%--${data}--%>

        <c:import url="/" var="data" context="/WCD2"/>

        <%
            pageContext.setAttribute("name", "A");
            pageContext.setAttribute("name", "B", PageContext.REQUEST_SCOPE);
            pageContext.setAttribute("name", "C", PageContext.SESSION_SCOPE);
            pageContext.setAttribute("name", "D", PageContext.APPLICATION_SCOPE);
        %>

        <c:remove var="name"/>

        Page : ${pageScope.name}<br/>
        Request : ${requestScope.name}<br/>
        Session : ${sessionScope.name}<br/>
        Application : ${applicationScope.name}<br/>

        <%
            pageContext.setAttribute("name", "A");
            pageContext.setAttribute("name", "B", PageContext.REQUEST_SCOPE);
            pageContext.setAttribute("name", "C", PageContext.SESSION_SCOPE);
            pageContext.setAttribute("name", "D", PageContext.APPLICATION_SCOPE);
        %>

        <c:remove var="name" scope="session"/>

        Page : ${pageScope.name}<br/>
        Request : ${requestScope.name}<br/>
        Session : ${sessionScope.name}<br/>
        Application : ${applicationScope.name}<br/>
        
        <!--c:if-->
        
        <c:if test="true">
            <h1>TRUE</h1>
        </c:if>


    </body>
</html>
