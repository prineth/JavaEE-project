/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author hirun
 */
public class deleteresv {

    String url = "jdbc:mysql://localhost:3306/hotel";
    String driver = "com.mysql.jdbc.Driver";
    Statement st;
    String news;
    public String deleteresbyid(int number,int userid) {
         String count= "";
        ConnectDB();
        String query = "call delete_reserve("+number+","+userid+")";
        
        try {
         
            
            
             ResultSet rs = st.executeQuery(query);
                
                rs.next();
                count = rs.getString(1);
                System.out.println("Number of records in the cricketers_data table: "+count); 
        } catch (SQLException ex) {
            Logger.getLogger(addSignData.class.getName()).log(Level.SEVERE, null, ex);
            //out.println("Unable to connect to database.");
            
        }
        
        
       return count;

    }

    private void ConnectDB() {

        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(loginData.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
