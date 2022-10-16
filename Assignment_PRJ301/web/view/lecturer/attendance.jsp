<%-- 
    Document   : attendance
    Created on : Oct 10, 2022, 10:30:41 AM
    Author     : Tunnnnnz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="../../css/attendance.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Slot: 1 <br/>
        Subject: PRJ301<br/>
        Class: PRJ301-M3<br/>
        <table>
            <tr>
                <th>INDEX</th>
                <th>IMAGE</th>
                <th>STUDENT NAME</th>
                <th>ROLL NUMBER</th>
                <th>ATTENDANCE</th>
                <th>NOTE</th>
            </tr>
            <tr>
                <td>1</td>
                <td>
                    <img src="../../img/Avatar.png" alt=""/>
                </td>
                <td>Nguyen Quang Tuan</td>
                <td>HE141164</td>
                <td>
                    <input type="radio" name="attend1" value="absent" checked="checked">Absent
                    <input type="radio" name="attend1" value="attendance">Attendance
                </td>
                <td>
                    <input type="text" name="note1">
                </td>
            </tr>
            
            <tr>
                <td>2</td>
                <td>
                    <img src="../../img/Avatar.png" alt=""/>
                </td>
                <td>Nguyen Quang Tuan</td>
                <td>HE141164</td>
                <td>
                    <input type="radio" name="attend2" value="absent" checked="checked">Absent
                    <input type="radio" name="attend2" value="attendance">Attendance
                </td>
                <td>
                    <input type="text" name="note2">
                </td>
            </tr>
            
            <tr>
                <td>3</td>
                <td>
                    <img src="../../img/Avatar.png" alt=""/>
                </td>
                <td>Nguyen Quang Tuan</td>
                <td>HE141164</td>
                <td>
                    <input type="radio" name="attend3" value="absent" checked="checked">Absent
                    <input type="radio" name="attend3" value="attendance">Attendance
                </td>
                <td>
                    <input type="text" name="note3">
                </td>
            </tr>
            
            <tr>
                <td>4</td>
                <td>
                    <img src="../../img/Avatar.png" alt=""/>
                </td>
                <td>Nguyen Quang Tuan</td>
                <td>HE141164</td>
                <td>
                    <input type="radio" name="attend4" value="absent" checked="checked">Absent
                    <input type="radio" name="attend4" value="attendance">Attendance
                </td>
                <td>
                    <input type="text" name="note4">
                </td>
            </tr>
            
            <tr>
                <td>5</td>
                <td>
                    <img src="../../img/Avatar.png" alt=""/>
                </td>
                <td>Nguyen Quang Tuan</td>
                <td>HE141164</td>
                <td>
                    <input type="radio" name="attend5" value="absent" checked="checked">Absent
                    <input type="radio" name="attend5" value="attendance">Attendance
                </td>
                <td>
                    <input type="text" name="note5">
                </td>
            </tr>
        </table>
    </body>
</html>
