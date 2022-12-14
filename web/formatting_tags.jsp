<%-- 
    Document   : formatting_tags
    Created on : Oct 7, 2022, 11:54:29 AM
    Author     : Shakith
--%>

<%@page import="java.util.Date"%>
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

        <c:set var="x" value="1.01"/>

        <fmt:formatNumber value="${x}" type="currency" currencyCode="EUR" groupingUsed="false" minFractionDigits="10"/>

        <fmt:formatNumber value="${x}" type="percent" maxIntegerDigits="10" groupingUsed="false"/>

        <fmt:formatNumber value="${x}" pattern="####"/>

        <%
            pageContext.setAttribute("now", new Date());
        %>


        <!--Or-->

        <jsp:useBean id="now" class="java.util.Date"/>

        <fmt:formatDate type="date" value="${now}"/>

        <fmt:formatDate type="time" value="${now}"/>

        <fmt:formatDate type="both" value="${now}" dateStyle="short" timeStyle="short"/>

        <fmt:formatDate type="time" value="${now}" pattern="H:m:s a"/>

        <h1> <fmt:formatDate type="both" value="${now}" dateStyle="full"/></h1>

        <fmt:parseDate var="x" value="2021-12-12 10:20:21 AM" pattern="yyyy-MM-dd hh:mm:ss a"/>

        ${x}
        <br/><br/><br/>

        <!--   fmt:bundle   -->

        <fmt:bundle basename="com.infinity.webapp.Data" prefix="admin.">
            <fmt:message key="name"/>
            <br/>
            <fmt:message key="age"/>
        </fmt:bundle>

        <fmt:setLocale value="si"/>

        <fmt:bundle basename="com.infinity.webapp.Data" prefix="si.">
            <fmt:message var="hello" key="hello"/>
        </fmt:bundle>

        <h1>${hello} World!!</h1>

        <fmt:bundle basename="message">
            <fmt:message key="hello"/>
        </fmt:bundle>

        <fmt:setLocale value="tm"/>

        <fmt:bundle basename="message">
            <fmt:message key="hello"/>
        </fmt:bundle>

        <!--   fmt:timezone   -->

        <jsp:useBean id="now1" class="java.util.Date"/>

        <table>
            <c:forEach var="zone" items="<%=java.util.TimeZone.getAvailableIDs()%>">
                <tr>
                    <td>
                        <c:out value="${zone}"/>
                    </td>
                    <td>
                        <fmt:timeZone value="${zone}">
                            <fmt:formatDate value="${now1}"/>
                        </fmt:timeZone>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <jsp:useBean id="now2" class="java.util.Date"/>

        <%--        <table>

     <c:forEach var="zone1" items="<%=java.util.TimeZone.getAvailableIDs()%>">
         <fmt:setTimeZone value="${zone1}"/>
         <tr>
             <td>
                 <c:out value="${zone1}"/>
             </td>
             <td>
                 <fmt:formatDate value="${now2}" type="both"/>
             </td>
         </tr>
     </c:forEach>
 </table>--%>

    </body>
</html>
