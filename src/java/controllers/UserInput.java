package controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author kumara krishnan
 */
public class UserInput {

    public static Statement stmt;
    public static ResultSet rs;
    public static Connection con;
    static double USER_INPUT[] = new double[18];

    public void get() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://127.11.163.130:3306/app", "adminBSfktw2", "D71pQxHI8nmP");
            Statement s;
            ResultSet rs;
            String pass = null;
            s = con.createStatement();
            rs = s.executeQuery("select * from userinput");
            while (rs.next()) {
                USER_INPUT[0] = rs.getDouble("a");
                USER_INPUT[1] = rs.getDouble("b");
                USER_INPUT[2] = rs.getDouble("c");
                USER_INPUT[3] = rs.getDouble("d");
                USER_INPUT[4] = rs.getDouble("e");
                USER_INPUT[5] = rs.getDouble("f");
                USER_INPUT[6] = rs.getDouble("g");
                USER_INPUT[7] = rs.getDouble("h");
                USER_INPUT[8] = rs.getDouble("i");
                USER_INPUT[9] = rs.getDouble("j");
                USER_INPUT[10] = rs.getDouble("k");
                USER_INPUT[11] = rs.getDouble("l");
                USER_INPUT[12] = rs.getDouble("m");
                USER_INPUT[13] = rs.getDouble("n");
                USER_INPUT[14] = rs.getDouble("o");
                USER_INPUT[15] = rs.getDouble("p");
                USER_INPUT[16] = rs.getDouble("q");
                USER_INPUT[17] = rs.getDouble("r");
            }

            PreparedStatement ps = con.prepareStatement("truncate table userinput");
            ps.executeUpdate();
            // JOptionPane.showMessageDialog(null,"Diagnostics started");
        } catch (Exception err) {
            System.out.println(err.getMessage());
        }
        for (int i = 0; i < USER_INPUT.length; i++) {
            // System.out.println(USER_INPUT[i]);
        }
    }
}
