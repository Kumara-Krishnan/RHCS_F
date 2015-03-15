package controllers;

import static controllers.Array.con;
import java.io.IOException;
//import model.Report;
//import model.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kumara krishnan
 */
public class Output extends NeuralNetwork {

    double val;
    String disease, advice;

    public void output() {
        actual = network.computeOutputs(UserInput.USER_INPUT);
        System.out.println("actual value in compute outputs" + actual[0]);
    }

    public void round() {
        actual[0] = actual[0] * 100;
        actual[0] = Math.round(actual[0]);
        actual[0] = actual[0] / 100;
        System.out.println(actual[0]);
    }

    public void showDisease() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://127.11.163.130:3306/app", "adminBSfktw2", "D71pQxHI8nmP");
            Statement s;
            ResultSet rs;
            s = con.createStatement();
            rs = s.executeQuery("select * from diseases");
            while (rs.next()) {
                val = rs.getDouble("value");
                if (actual[0] == val) {
                    disease = rs.getString("name");
                    advice = rs.getString("advice");
                    System.out.println(disease + "   " + advice);
                             //String s1="Update result set DISEASE='"+disease+"',ADVICE='"+advice+"' where A='a'";
                    //Statement st=con.createStatement();
                    //int s2=st.executeUpdate(s1);

                }

            }
        } catch (Exception err) {
            System.out.println(err.getMessage());
        }

    }

    public void Openpage(HttpServletResponse res) throws IOException {
        // here type your JSP page that you want to open
        res.sendRedirect("report.jsp");
    }
}
