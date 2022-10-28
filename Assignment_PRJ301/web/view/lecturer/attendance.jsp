<%-- 
    Document   : attendance
    Created on : Oct 10, 2022, 10:30:41 AM
    Author     : Tunnnnnz
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="../../css/attendance.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Slot: ${requestScope.ses.id} <br/>
        Subject: ${requestScope.ses.group.subject.name}<br/>
        Class: ${requestScope.ses.group.gname}<br/>
        Room: ${requestScope.ses.room.name}<br/>
        Time: ${requestScope.ses.slot.description} &emsp; ${requestScope.ses.date}<br/>
        Attended: ${requestScope.ses.attended?"Yes":"No"}
        <form action="takeatt" method="POST">
            <input type="hidden" name="sesid" value="${param.id}"/>
            <table border="1">
                <tr>
                    <td>Student Id</td>
                    <td>Student Name</td>
                    <td>Present</td>
                    <td>Absent</td>
                    <td>Description</td>
                </tr>
                <c:forEach items="${requestScope.atts}" var="a">
                  <tr>
                    <td>${a.student.stid}
                        <input type="hidden" value="${a.student.stid}" name="stdid"/>
                    </td>
                    <td>${a.student.stname}</td>
                    <td><input type="radio" 
                               <c:if test="${a.present}">
                               checked="checked" 
                               </c:if>
                               name="present${a.student.stid}" value="present" /></td>
                    <td><input type="radio"
                               <c:if test="${!a.present}">
                               checked="checked" 
                               </c:if>
                               name="present${a.student.stid}" value="absent" /></td>
                    <td><input type="" value="${a.description}" name="description${a.student.stid}"></td>
                </tr>  
                </c:forEach>
            </table>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
