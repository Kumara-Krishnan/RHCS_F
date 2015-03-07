/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kumara krishnan
 */
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out=response.getWriter();
            String name=request.getParameter("name");
            int age=Integer.parseInt(request.getParameter("age"));
            String sex=request.getParameter("sex");
            String bloodgrp=request.getParameter("bloodgrp");
            int bp=Integer.parseInt(request.getParameter("bp"));
            int sugar=Integer.parseInt(request.getParameter("sugar"));
            int height= Integer.parseInt(request.getParameter("height"));
            int weight= Integer.parseInt(request.getParameter("weight"));
            long phone= Long.parseLong(request.getParameter("phone"));
            String address=request.getParameter("address");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            System.out.println(name+"  "+age+"  "+sex+"  "+bloodgrp+"  "+bp+"  "+sugar+"  "+height+"  "+weight+"  "+phone+"  "+email+"  "+password);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://127.11.163.130:3306/app", "adminBSfktw2", "D71pQxHI8nmP");
            PreparedStatement s;
            s=con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?,?,?,?)");
            s.setString(1, email);
            s.setString(2, name);
            s.setInt(3, age);
            s.setString(4, sex);
            s.setString(5, bloodgrp);
            s.setInt(6, bp);
            s.setInt(7, sugar);
            s.setLong(8, phone);
            s.setInt(9, height);
            s.setInt(10, weight);
            s.setString(11, password);
            s.setString(12, address);
            s.executeUpdate();
            s=con.prepareStatement("insert into login values(?,?)");
            s.setString(1, email);
            s.setString(2, password);
            s.executeUpdate();
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        catch(Exception e){
            e.printStackTrace();
            request.getRequestDispatcher("Reg.jsp").forward(request, response);
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
