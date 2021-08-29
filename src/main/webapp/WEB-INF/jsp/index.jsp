<%-- 
    Document   : newjsp
    Created on : Aug 16, 2021, 7:45:41 PM
    Author     : three
--%>

<%@page contentType="text/html;" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="mes" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>This is your first webapp</title>
        <c:url value="/css/style.css" var="CSS" />
        <link href="${CSS}" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <ul>
            <c:forEach var="cat" items="${categories}" >
               <li>${cat.id} - ${cat.name}</li> 
            </c:forEach>
        </ul>
    </body>
</html>
