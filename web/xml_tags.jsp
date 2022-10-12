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
    
    <x:out select="$output/books/book[1]/author"/>

</body>
</html>
