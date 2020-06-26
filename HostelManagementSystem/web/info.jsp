<%-- 
    Document   : info
    Created on : Mar 31, 2019, 9:50:53 PM
    Author     : sanyam
--%>

<%@page import="connectThem.javaConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="ad.css">
        <title>Bose</title>
    </head>
    <body>
        
        <div class="side-bar">
            <h2>Bose Hostel</h2>
            <hr>
            <br>
            <a href="admin.jsp"><h3>Home</h3></a>
            <br>
            <a href="info.jsp"><h3 class="active">Students Database</h3></a>
            <br>
            <a href="allot.jsp"><h3>Allot Room</h3></a>
            <br>
            <a href="add.jsp"><h3>Add Warden</h3></a>
            <br>
            <a href="food.jsp"><h3>Update Mess Food</h3></a>
            <br>
            
           <!-- <a href="toDo.jsp"><h3> To-Do List </h3></a>-->
            <br>
            <a href="logout"><h3>Logout</h3></a>
            <br>
            <hr>
        </div>
        
        <div class="pro"><br><br><br>
            <table border="0" width="1000px" height="500px" style="margin-left:90px;color:white;">
             <tr>
                 <td><b>Name</b></td>
                 <td><b>Roll No</b></td>
                 <td><b>Email</b></td>
                 <td><b>Password</b></td>
             </tr>
            <%
                Connection conn;
                Statement ps;
                ResultSet rs=null;
                conn=javaConnect.connectDb();
                
                conn=javaConnect.connectDb();
                   try {
                       int count=0;
                       String sql="select name, rollno, email, password from Register";
                       ps=conn.createStatement(); 
                       rs=ps.executeQuery(sql);
                       while(rs.next()) {
                           
                       count++;
                   
            %>
            <tr><td><%= rs.getString("name") %></td><td><%= rs.getString("rollno") %></td><td><%= rs.getString("email") %></td><td><%= rs.getString("password") %></td></tr>
            
                   <%
                       }
                      }
                       catch(Exception e) {
                       out.print(e);
                   }
            
            %>
            </table>
        </div>
    </body>
</html>
