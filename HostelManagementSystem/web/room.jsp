<%-- 
    Document   : room
    Created on : Mar 24, 2019, 7:17:48 PM
    Author     : sanyam
--%>

<%@page import="connectThem.javaConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
            <a href="profile.jsp"><h3>Home</h3></a>
            <br>
            <a href="complete.jsp"><h3>Complete Info</h3></a>
            <br>
            <a href="room.jsp"><h3 class="active">Room Allotment</h3></a>
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
        <table>
        <div class ="pro">
            <%
                Connection conn;
                PreparedStatement ps;
                ResultSet rs;
                
                conn=javaConnect.connectDb();
                
                try {
           
                 String o1=request.getParameter("");
                 String sql="select * from allot where name=? ";
                 ps=conn.prepareStatement(sql);
                 
                 ps.setString(1,o1);
                 rs=ps.executeQuery();
            
              while(rs.next()) {
                           
                       
                   
            %>
            <tr><td><%= rs.getString("name") %></td><td><%= rs.getString("room") %></td></tr>
            
                   <%
                       }
                      
            
           
        }
        catch(Exception e) {
            out.println(e);
        }
            %>
        </table>     
        </div>
</html>