<%-- 
    Document   : info
    Created on : Oct 29, 2022, 7:55:08 AM
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
        <h1>Student Information</h1>
        <form action="info" method="POST">
            Profile<br/>
            <table border="1" style="text-align: left;">
                <tr>
                    <th>Full name</th>
                    <td>${requestScope.stds.stdname}</td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>${requestScope.stds.gender?"Boy":"Girl"}</td>
                </tr>
                <tr>
                    <th>Date of birth</th>
                    <td>${requestScope.stds.dob}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${requestScope.stds.stdemail}</td>
                </tr>
                <tr>
                    <th>Phone number</th>
                    <td>${requestScope.stds.stdphone}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${requestScope.stds.address}</td>
                </tr>
                <tr>
                    <th>ID Card</th>
                    <td>${requestScope.stds.idcard}</td>
                </tr>
                <tr>
                    <th>Date of issue</th>
                    <td>${requestScope.stds.dateofissue}</td>
                </tr>
                <tr>
                    <th>Place of issue</th>
                    <td>${requestScope.stds.placeofissue}</td>
                </tr>
            </table><br/>
            Parent<br/>
             <table border="1" style="text-align: left;">
                <tr>
                    <th>Name</th>
                    <td>${requestScope.par.prname}</td>
                </tr>
                <tr>
                    <th>Phone number</th>
                    <td>${requestScope.par.prphone}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>${requestScope.par.premail}</td>
                </tr>
            </table>
        </form>
    </body>
</html>
