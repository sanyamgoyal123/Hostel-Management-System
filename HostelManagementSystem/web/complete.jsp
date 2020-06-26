<%-- 
    Document   : complete
    Created on : Apr 1, 2019, 7:17:26 PM
    Author     :adarsh
--%>
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
            <a href="complete.jsp"><h3 class="active">Complete Info</h3></a>
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
         <div class="pro">
                <h1>User Profile</h1>
                <br><br>
                
                <img src="user.png">
                
                <h2>Email :- &nbsp;&nbsp;&nbsp; <%= request.getSession().getAttribute("uname").toString() %></h2> 
                <br>
                <h2>Name :- <% 
                                 
                               String rex=request.getSession().getAttribute("uname").toString(),y,z;
                               Connection conn=javaConnect.connectDb();
                               String sql="select name,rollno from Register where email=?";  
                               PreparedStatement st=conn.prepareStatement(sql);
                               st.setString(1, rex);
                               ResultSet rs=st.executeQuery();
                               if(rs.next()) {
                                   out.println("<script>alert('Exists);</script>");
                               }
                               y=rs.getString(1);
                               z=rs.getString(2);
                    
                    
                    %>&nbsp;&nbsp;&nbsp; <%= y%></h2>
                <br>
                <h2> College Id :-  &nbsp;&nbsp;&nbsp; <%= z%></h2>
        </div>
</html>
