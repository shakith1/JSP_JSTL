<%-- 
    Document   : xml_tags
    Created on : Oct 12, 2022, 8:56:38 AM
    Author     : Shakith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <c:set var="xmltext">
        <books>
            <book>
                <name>A</name>
                <author>ABC</author>
                <price>100</price>
            </book>
            <book>
                <name>B</name>
                <author>ABC</author>
                <price>200</price>
            </book>
        </books>
    </c:set>

    <c:out value="${xmltext}" escapeXml="false"/>

    <!--   x:out   -->

    <x:parse xml="${xmltext}" var="output"/>

    <x:out select="$output"/><br/>

    <x:out select="$output/books/book[1]/author"/><br/>

    <x:set var="book" select="$output/books/book[2]"/>

    <h1>Book</h1>
    <!--${book}-->
    <x:out select="$book"/><br/>
    <x:out select="$book/name"/>

    <!--Outside xml-->

    <c:import url="users.xml" var="users"/>
    ${users}
    <br/><!-- comment -->

    <x:parse var="output" xml="${users}"/>

    <x:out select="$output/users/user[1]/name"/>

    <x:out select="$output//user[1]/name"/><br/>

    <!--x:foreach-->

    <x:forEach select="$output//user" var="user">
        <x:out select="$user/name"/><br/>
    </x:forEach>

    <x:if select="$output//user">
        <h1>Error</h1>
    </x:if>

    <x:if select="$output//user" var="isUser"/>

    <c:if test="${!isUser}">
        <c:out value="Document has one user" escapeXml="true"/>
    </c:if>
    
    <x:if select="$output//user/salary > 40000">
        <h1>GOOD SALARY</h1>
    </x:if>
</body>
</html>
