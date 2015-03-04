/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kumara Krishnan
 */
public class Verify extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out=response.getWriter();
            String userName = request.getParameter("email");
            String userPass = request.getParameter("password");
            System.out.println(userName+"  "+userPass);
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "kumar", "kumar");
            Statement s;
            ResultSet rs;
            String pass=null;
            s=con.createStatement();
            rs=s.executeQuery("select password from login where email='"+userName+"'");
            while(rs.next()){
                pass=rs.getString("password");
                System.out.println(pass);
            }
            System.out.println(rs);
            if (userPass.equals(pass)) {
                //forward to Inbox
                //create or retrive session
                HttpSession session = request.getSession(true);
                session.setAttribute("status", "valid");
                System.out.println("Session Id " + session.getId());
                //add status->valid
                Cookie c = new Cookie("user", userName);
                response.addCookie(c);
                request.getRequestDispatcher("Home.jsp").forward(request, response);
            } else {
                //forward to login
                out.println("<b>Username or password incorrect</b>");
                request.getRequestDispatcher("login.jsp").include(request, response);
            }
        } 
        catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Verify.class.getName()).log(Level.SEVERE, null, ex);
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
