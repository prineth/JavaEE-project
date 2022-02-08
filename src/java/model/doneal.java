/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hirun
 */
public class doneal {
 String url = "jdbc:mysql://localhost:3306/hotel";
String driver  = "com.mysql.jdbc.Driver";
Statement st;


    public synchronized void availdone(int roomcount,String roomType,int userid,int nights,int noOfGuest,String ArrivalDate,String DepatureDate) {
        
        ConnectDB();
        
        String query="CALL new_reserve_insert('"+roomType+"',"+userid+","+roomcount+","+nights+","+noOfGuest+",'"+ArrivalDate+"','"+DepatureDate+"')";
        
            try {
                
                
                for(int i=0 ; i<roomcount ; i++){
                    
                        st.executeUpdate(query);
                             
                }

                
            } catch (SQLException ex) {
                Logger.getLogger(loginData.class.getName()).log(Level.SEVERE, null, ex);
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
