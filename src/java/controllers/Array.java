package controllers;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author kumara krishnan and Kabilan Senapathy
 */
public class Array {

    public static Statement stmt;
    public static ResultSet rs;
    public static Connection con;
    static int a;
    public static final double TRAIN_INPUT[][] = new double[6][18];
    public static final double TRAIN_IDEAL[][] = new double[6][1];
    int i = 0, j = 0;
    /*public void addDisease(){
     try{
     String host="jdbc:derby://localhost:1527/sample";
     String uname="app";
     String pwd="app";
     con=DriverManager.getConnection(host,uname,pwd);
     stmt=con.createStatement();
     String sql="select * from APP.USERINPUT";
     rs=stmt.executeQuery(sql);
     while(rs.next()){
     a++;
     }    
     }
     catch(SQLException err){
     System.out.println(err.getMessage());
     }
     }*/

    public void get() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://127.11.163.130:3306/app", "adminBSfktw2", "D71pQxHI8nmP");
            Statement s;
            ResultSet rs;
            String pass = null;
            s = con.createStatement();
            rs = s.executeQuery("select * from traininginput");
            while (rs.next()) {
                TRAIN_INPUT[i][0] = rs.getDouble("ONE");
                TRAIN_INPUT[i][1] = rs.getDouble("TWO");
                TRAIN_INPUT[i][2] = rs.getDouble("THREE");
                TRAIN_INPUT[i][3] = rs.getDouble("FOUR");
                TRAIN_INPUT[i][4] = rs.getDouble("FIVE");
                TRAIN_INPUT[i][5] = rs.getDouble("SIX");
                TRAIN_INPUT[i][6] = rs.getDouble("SEVEN");
                TRAIN_INPUT[i][7] = rs.getDouble("EIGHT");
                TRAIN_INPUT[i][8] = rs.getDouble("NINE");
                TRAIN_INPUT[i][9] = rs.getDouble("TEN");
                TRAIN_INPUT[i][10] = rs.getDouble("ELEVEN");
                TRAIN_INPUT[i][11] = rs.getDouble("TWELVE");
                TRAIN_INPUT[i][12] = rs.getDouble("THIRTEEN");
                TRAIN_INPUT[i][13] = rs.getDouble("FOURTEEN");
                TRAIN_INPUT[i][14] = rs.getDouble("FIFTEEN");
                TRAIN_INPUT[i][15] = rs.getDouble("SIXTEEN");
                TRAIN_INPUT[i][16] = rs.getDouble("SEVENTEEN");
                TRAIN_INPUT[i][17] = rs.getDouble("EIGHTEEN");

                i++;

            }

        } catch (Exception err) {
            System.out.println(err.getMessage());
        }
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "kumar", "kumar");
            Statement s;
            ResultSet rs;
            String pass = null;
            s = con.createStatement();
            rs = s.executeQuery("select * from trainingideal");
            while (rs.next()) {

                TRAIN_IDEAL[j][0] = rs.getDouble("one");
                System.out.println("From ideal" + TRAIN_IDEAL[j][0]);
                j++;
            }

        } catch (Exception err) {
            System.out.println(err.getMessage());
        }
        for (int i = 0; i < 1; i++) {
            for (int j = 0; j < 18; j++) {
                System.out.println("from training input ");
                System.out.println(TRAIN_INPUT[i][j]);
            }
            //System.out.println(TRAIN_IDEAL[i][0]);
        }
    }

}
