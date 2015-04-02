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
public class Diagnosis extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            response.setContentType("text/html;charset=UTF-8");
            String a[] = new String[18];
            double b[] = new double[18];
            a[0] = request.getParameter("a");
            a[1] = request.getParameter("b");
            a[2] = request.getParameter("c");
            a[3] = request.getParameter("d");
            a[4] = request.getParameter("e");
            a[5] = request.getParameter("f");
            a[6] = request.getParameter("g");
            a[7] = request.getParameter("h");
            a[8] = request.getParameter("i");
            a[9] = request.getParameter("j");
            a[10] = request.getParameter("k");
            a[11] = request.getParameter("l");
            a[12] = request.getParameter("m");
            a[13] = request.getParameter("n");
            a[14] = request.getParameter("o");
            a[15] = request.getParameter("p");
            a[16] = request.getParameter("q");
            a[17] = request.getParameter("r");

            for (int i = 0; i < a.length; i++) {
                if (a[i] == null) {
                    System.out.println("first if" + a[i]);
                    b[i] = 0.0;
                } else {
                    System.out.println(a[i]);
                    b[i] = 1.0;
                }
            }
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://127.11.163.130:3306/app", "adminBSfktw2", "D71pQxHI8nmP");
            PreparedStatement s;
            s = con.prepareStatement("insert into userinput values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            for (int i = 0; i < a.length; i++) {
                s.setDouble((i + 1), b[i]);
            }
            s.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Array a = new Array();
        //a.addDisease();
        a.get();
        UserInput ui = new UserInput();
        ui.get();
        NeuralNetwork nn = new NeuralNetwork();
        nn.test();
        Output o = new Output();
        o.output();
        o.round();
        o.showDisease();
        out.println("You have been diagnosed with typhoid");
        request.getRequestDispatcher("Result.jsp").include(request, response);
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
