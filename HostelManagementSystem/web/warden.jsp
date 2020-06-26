<%-- 
    Document   : warden
    Created on : Mar 25, 2019, 7:18:26 PM
    Author     : sanyam
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connectThem.javaConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="connectThem.loginServlet"%>
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
            <a href="profile.jsp"><h3>Home</h3></a>
            <br>
            <a href="complete.jsp"><h3>Complete Info</h3></a>
            <br>
            <a href="room.jsp"><h3>Room Allotment</h3></a>
            <br>
            <a href="mess.jsp"><h3>Mess Schedule</h3></a>
            <br>
            <a href="warden.jsp"><h3 class="active">Warden Info</h3></a>
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
        <div class="pro"><br><br><br>
            <table border="0" width="1000px" height="500px" style="margin-left:90px;color:white;">
             <tr>
                 <td><b>Warden's Name</b></td>
                 <td><b>Warden's Mobile Number</b></td>
                 
             </tr>
            <%
                Connection conn;
                Statement ps;
                ResultSet rs=null;
                conn=javaConnect.connectDb();
                
                conn=javaConnect.connectDb();
                   try {
                       int count=0;
                       String sql="select name, mobile from warden";
                       ps=conn.createStatement();
                       rs=ps.executeQuery(sql);
                       while(rs.next()) {
                           
                       count++;
                   
            %>
            <tr><td><%= rs.getString("name") %></td><td><%= rs.getString("mobile") %></td></tr>
            
                   <%
                       }
                      }
                       catch(Exception e) {
                       out.print(e);
                   }
            
            %>
            </table>
        </div> 
</html>