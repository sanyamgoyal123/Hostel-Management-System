<%-- 
    Document   : profile
    Created on : Mar 27, 2019, 5:11:34 PM
    Author     : sanyam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connectThem.javaConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="ad.css">
        <title>Bose Hostel</title>
    </head>
    <body>
        <div class="side-bar">
            <h2>Bose</h2>
            <hr>
            <br><br><br>
            <a href="profile.jsp"><h3 class="active">Home</h3></a>
            <br>
            <a href="complete.jsp"><h3>Complete Info</h3></a>
            <br>
            <a href="room.jsp"><h3>Room Allotment</h3></a>
            <br>
            <a href="mess.jsp"><h3>Mess Schedule</h3></a>
            <br>
            <a href="warden.jsp"><h3>Warden Info</h3></a>
            <br>
            <!--<a href="toDo.jsp"><h3> To-Do List </h3></a>-->
            
            <a href="logout"><h3>Logout</h3></a>
            <br><br><br>
            <hr>
        </div>
<!--        <div class="bottom-bar">
            <div class="progress"><h2>Subjects</h2></div>
            <div class="English">English</div>
            <div class="Math">Maths</div>
            <div class="Comp">Computer Science</div>
        </div>-->
               
</html>
