<%-- 
    Document   : home
    Created on : Oct 27, 2022, 11:10:25 PM
    Author     : Tunnnnnz
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="logout" method="POST">
        <c:if test="${sessionScope.account ne null}">
            Hello ${sessionScope.account.displayname}
            <input type="submit" value="Logout" name="logout">
        </c:if>
        <c:if test="${sessionScope.account eq null}">
            You not login yet. Click 
            <a href="login">here</a> to login.
        </c:if>
        </form>
    </body>
</html>
