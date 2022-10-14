<%-- 
    Document   : attendance
    Created on : Oct 10, 2022, 10:30:41 AM
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
        <table border = 1>
            <tr>
                <th>Index</th>
                <th>Student Name</th>
                <th>Roll Number</th>
                <th>Absent</th>
                <th>Attendance</th>
            </tr>
            <c:forEach items="${requestScope.students}" var="s">
                <tr>
                    <td></td>
                    <td>${s.roll_number}</td>
                    <td>${s.name}</td>
                    <td>Absent<input type="checkbox" name="attendance" checked="checked"></td>
                    <td>Attendance<input type="checkbox" name="attendace"></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
