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
        Taker: ${sessionScope.account.displayname}
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
                    <td>${a.student.stdid}
                        <input type="hidden" value="${a.student.stdid}" name="stdid"/>
                    </td>
                    <td>${a.student.stdname}</td>
                    <td><input type="radio" 
                               <c:if test="${a.present}">
                               checked="checked" 
                               </c:if>
                               name="present${a.student.stdid}" value="present" /></td>
                    <td><input type="radio"
                               <c:if test="${!a.present}">
                               checked="checked" 
                               </c:if>
                               name="present${a.student.stdid}" value="absent" /></td>
                    <td><input type="" value="${a.description}" name="description${a.student.stdid}"></td>
                </tr>  
                </c:forEach>
            </table>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
