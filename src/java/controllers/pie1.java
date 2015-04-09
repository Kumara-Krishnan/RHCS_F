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
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kabilan
 */
public class pie1 extends HttpServlet {

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

        int a1 = 0;
        int a2 = 0;
        int a3 = 0;
        int a4 = 0;
        int a5 = 0;
        String d1 = null, d2 = null, d3 = null, d4 = null, d5 = null;

        try (PrintWriter out = response.getWriter()) {
            System.out.println("hi1");
            try {
                System.out.println("hi2");
                Class.forName("com.mysql.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://127.11.163.130:3306/app", "adminBSfktw2", "D71pQxHI8nmP");
                System.out.println("hi3");
                Statement s;
                ResultSet rs;
                String disease_name = null;
                int count;
                s = con.createStatement();
                rs = s.executeQuery("select * from piechart");

                int iterate = 0;

                while (rs.next()) {

                    disease_name = rs.getString(2);
                    count = Integer.parseInt(rs.getString(3));

                    if (iterate == 0) {
                        a1 = count;
                        d1 = disease_name;
                    }
                    if (iterate == 1) {
                        a2 = count;
                        d2 = disease_name;
                    }
                    if (iterate == 2) {
                        a3 = count;
                        d3 = disease_name;
                    }
                    if (iterate == 3) {
                        a4 = count;
                        d4 = disease_name;
                    }
                    if (iterate == 4) {
                        a5 = count;
                        d5 = disease_name;
                    }

                    System.out.println(disease_name);
                    System.out.println(count);

                    iterate++;
                }

            } catch (Exception e) {

            }

            out.println("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "  <head>\n"
                    + "    <script type=\"text/javascript\" src=\"https://www.google.com/jsapi\"></script>\n"
                    + "    <script type=\"text/javascript\">\n"
                    + "   \n"
                    + "        \n"
                    + "      google.load(\"visualization\", \"1\", {packages:[\"corechart\"]});\n"
                    + "      google.setOnLoadCallback(drawChart);\n"
                    + "     \n"
                    + "      function drawChart() {\n"
                    + "          var msg=\"${id}\";\n"
                    + "          alert(msg);   \n"
                    + "          var data = google.visualization.arrayToDataTable([\n"
                    + "          ['Disease', 'Populatioin'],\n"
                    + "          ['" + d1 + "',     " + a1 + "],\n"
                    + "          ['" + d2 + "',      " + a2 + "],\n"
                    + "          ['" + d3 + "',  " + a3 + "],\n"
                    + "          ['" + d4 + "', " + a4 + "],\n"
                    + "          ['" + d5 + "',    " + a5 + "]\n"
                    + "        ]);\n"
                    + "\n"
                    + "        var options = {\n"
                    + "          title: 'Disease Vs Population',\n"
                    + "          pieHole: 0.4,\n"
                    + "        \n"
                    + "        is3D: true\n"
                    + "        };\n"
                    + "\n"
                    + "        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));\n"
                    + "        chart.draw(data, options);\n"
                    + "      }\n"
                    + "      \n"
                    + "    </script>\n"
                    + "  </head>\n"
                    + "  <body>\n"
                    + "    <div id=\"donutchart\" style=\"width: 900px; height: 500px;\"></div>\n"
                    + "    \n"
                    + "  </body>\n"
                    + "</html>\n"
                    + "");
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
