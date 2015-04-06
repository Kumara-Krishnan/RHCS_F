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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kumara krishnan
 */
public class Update extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String email="";
        try {

            Cookie c[] = request.getCookies();
            for (Cookie d : c) {
                System.out.println(d.getName());
                if (d.getName().equals("user")) {
                    email = d.getValue();
                }
            }
            PrintWriter out = response.getWriter();
            int age = Integer.parseInt(request.getParameter("age"));
            String bloodgrp = request.getParameter("bloodgrp");
            int bp = Integer.parseInt(request.getParameter("bp"));
            int sugar = Integer.parseInt(request.getParameter("sugar"));
            int height = Integer.parseInt(request.getParameter("height"));
            int weight = Integer.parseInt(request.getParameter("weight"));
            long phone = Long.parseLong(request.getParameter("phone"));
            String address = request.getParameter("address");
            String password = request.getParameter("password");
            //out.println(name + "  " + age + "  " + sex + "  " + bloodgrp + "  " + bp + "  " + sugar + "  " + height + "  " + weight + "  " + phone + "  " + email + "  " + password);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://127.11.163.130:3306/app", "adminBSfktw2", "D71pQxHI8nmP");
            PreparedStatement s;
            s = con.prepareStatement("update registration set age=?,bloodgroup=?,bp=?,sugar=?,phone=?,height=?,weight=?,password=?,address=? where email=?");
            s.setInt(1, age);
            s.setString(2, bloodgrp);
            s.setInt(3, bp);
            s.setInt(4, sugar);
            s.setLong(5, phone);
            s.setInt(6, height);
            s.setInt(7, weight);
            s.setString(8, password);
            s.setString(9, address);
            s.setString(10, email);
            s.executeUpdate();
            s = con.prepareStatement("update login set password=? where email=?");
            s.setString(1, password);
            s.setString(2, email);
            s.executeUpdate();
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("UserDetails.jsp").forward(request, response);
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
