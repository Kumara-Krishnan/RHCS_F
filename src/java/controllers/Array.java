package controllers;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author kumara krishnan
 */
public class Array {

    /**
     *
     */
    public static Statement stmt;

    /**
     *
     */
    public static ResultSet rs;

    /**
     *
     */
    public static Connection con;
    static int a;

    /**
     *
     */
    public static final double TRAIN_INPUT[][] = new double[6][18];

    /**
     *
     */
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

    /**
     *
     */
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
                TRAIN_INPUT[i][0] = rs.getDouble("one");
                TRAIN_INPUT[i][1] = rs.getDouble("two");
                TRAIN_INPUT[i][2] = rs.getDouble("three");
                TRAIN_INPUT[i][3] = rs.getDouble("four");
                TRAIN_INPUT[i][4] = rs.getDouble("five");
                TRAIN_INPUT[i][5] = rs.getDouble("six");
                TRAIN_INPUT[i][6] = rs.getDouble("seven");
                TRAIN_INPUT[i][7] = rs.getDouble("eight");
                TRAIN_INPUT[i][8] = rs.getDouble("nine");
                TRAIN_INPUT[i][9] = rs.getDouble("ten");
                TRAIN_INPUT[i][10] = rs.getDouble("eleven");
                TRAIN_INPUT[i][11] = rs.getDouble("twelve");
                TRAIN_INPUT[i][12] = rs.getDouble("thirteen");
                TRAIN_INPUT[i][13] = rs.getDouble("fourteen");
                TRAIN_INPUT[i][14] = rs.getDouble("fifteen");
                TRAIN_INPUT[i][15] = rs.getDouble("sixteen");
                TRAIN_INPUT[i][16] = rs.getDouble("seventeen");
                TRAIN_INPUT[i][17] = rs.getDouble("eighteen");

                i++;

            }

        } catch (Exception err) {
            System.out.println(err.getMessage());
        }
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://127.11.163.130:3306/app", "adminBSfktw2", "D71pQxHI8nmP");
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
