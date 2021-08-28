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
        <h1>Your majesty!</h1>
        <h1>Xin chao ${name}</h1>
        <a href="<c:url value="/test"/>">Forward/Redirect</a>
        <c:url value="/images/khoasol.jpg" var="img" />
        <div>
            <img src="${img}" alt="alt"/>
        </div>
        <c:if test="${fullName != null}">
            <h1>${fullName}</h1>
        </c:if>
        <ol>
            <c:forEach var="u" items="${users}">
                <li>${u.fName} ${u.lName}</li>
            </c:forEach>
        </ol>
        <c:url value="/hello-post" var="postAct" />
        <form:form method="post" action="${postAct}" modelAttribute="user">
            <mes:message code="label.username" />
            <form:input path="fName" />
            <br>
            <mes:message code="label.password" />
            <form:input path="lName" />
            <input type="submit" value="send" />
        </form:form>
    </body>
</html>
