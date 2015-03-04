package controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author kumara krishnan and Kabilan Senapathy
 */
public class UserInput {
    public static Statement stmt;
    public static ResultSet rs;
    public static Connection con;  
    static double USER_INPUT[]=new double[18];
     
      public  void get(){
          try{
                Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "kumar", "kumar");
            Statement s;
            ResultSet rs;
            String pass=null;
            s=con.createStatement();
            rs=s.executeQuery("select * from userinput");
                while(rs.next()){
                        USER_INPUT[0]=rs.getInt("a");
                        USER_INPUT[1]=rs.getInt("b");
                        USER_INPUT[2]=rs.getInt("c");
                        USER_INPUT[3]=rs.getInt("d");
                        USER_INPUT[4]=rs.getInt("e");
                        USER_INPUT[5]=rs.getInt("f");
                        USER_INPUT[6]=rs.getInt("g");
                        USER_INPUT[7]=rs.getInt("h");
                        USER_INPUT[8]=rs.getInt("i");
                        USER_INPUT[9]=rs.getInt("j");
                        USER_INPUT[10]=rs.getInt("k");
                        USER_INPUT[11]=rs.getInt("l");
                        USER_INPUT[12]=rs.getInt("m");
                        USER_INPUT[13]=rs.getInt("n");
                        USER_INPUT[14]=rs.getInt("o");
                        USER_INPUT[15]=rs.getInt("p");
                        USER_INPUT[16]=rs.getInt("q");
                        USER_INPUT[17]=rs.getInt("r");
                  }
                
              PreparedStatement ps=con.prepareStatement("truncate table userinput");
              ps.executeUpdate();
            // JOptionPane.showMessageDialog(null,"Diagnostics started");
        }
        catch(Exception err){
                  System.out.println(err.getMessage());
        }
    for(int i=0;i<USER_INPUT.length;i++){  
       // System.out.println(USER_INPUT[i]);
   }
     }
}

