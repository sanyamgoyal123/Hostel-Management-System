/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectThem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sanyam
 */
public class signServlet extends HttpServlet {
      Connection conn;
       PreparedStatement ps;
         public String Random() {
        Random rd= new Random();
        
        return (""+rd.nextInt(1000+1));
        }   

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
         conn=javaConnect.connectDb();
        PrintWriter out=res.getWriter();
        try {
           
            String username=req.getParameter("username");
            String rollNo=req.getParameter("roll");
            String emailId=req.getParameter("email");
            String password=req.getParameter("pass1");
            String cpassword=req.getParameter("pass2");
            
            String sql="insert into Register(name, rollno, email, password, cpassword) values(?,?,?,?,?)";
            ps=conn.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,rollNo);
            ps.setString(3,emailId);
            ps.setString(4,password);
            ps.setString(5,cpassword);
            
            ps.executeUpdate();
            out.println("<script>alert('Sign in Successful');window.location.href='index.html'</script>");
        }
        catch(Exception e) {
            System.out.println(e);
           out.print("<script>alert('");
           out.print(e);
           out.print("')</script>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}