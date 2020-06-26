<%-- 
    Document   : add
    Created on : Apr 2, 2019, 9:42:53 PM
    Author     : adarsh
--%>

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
            <a href="info.jsp"><h3>Students Database</h3></a>
            <br>
            <a href="allot.jsp"><h3>Allot Room</h3></a>
            <br>
            <a href="add.jsp"><h3 class="active">Add Warden</h3></a>
            <br>
            <a href="food.jsp"><h3>Update Mess Food</h3></a>
            <br>
            
           <!-- <a href="toDo.jsp"><h3> To-Do List </h3></a>-->
            <br>
            <a href="logout"><h3>Logout</h3></a>
            <br>
            <hr>
        </div>
        <div class="pro">
             <br><br><br><br><br><br><br><br><br><br><br><center><form method="POST">
                     <input type="text" placeholder="Enter Warden's Name" style="width:350px;" name="n1"><br><br><br><br><br>
                     <input type="text" placeholder="Enter Warden's Mobile Number" style="width:350px;" name="m1"><br><br><br><br><br>
                     <button type="submit" formaction="addWarden"> Add </button>
                 </form>
             </center>
             
        </div>
    </body>
</html>
