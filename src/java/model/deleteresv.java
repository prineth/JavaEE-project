/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hirun
 */
public class deleteresv {

    String url = "jdbc:mysql://localhost:3306/hotel";
String driver  = "com.mysql.jdbc.Driver";
Statement st;
    public void deleteresbyid(int number) {
       
         ConnectDB()  ;
        String query="delete from room_reservation where res_id="+number+"" ; 
        
        
            try {
                st.executeUpdate(query);
            } catch (SQLException ex) {
                Logger.getLogger(addSignData.class.getName()).log(Level.SEVERE, null, ex);
            }
        
    }
    
    
    
      private void ConnectDB() {
       
         try {
             Class.forName(driver);
             Connection con=DriverManager.getConnection(url, "root","");
               st  = con.createStatement();
         } catch (ClassNotFoundException | SQLException ex) {
             Logger.getLogger(loginData.class.getName()).log(Level.SEVERE, null, ex);
         }
    
     }
    
}





  
