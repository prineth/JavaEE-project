/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hirun
 */
public class checkAvail {
 String url = "jdbc:mysql://localhost:3306/hotel";
String driver  = "com.mysql.jdbc.Driver";
Statement st;
    public String avail(int rooms,String roomType) {
      String data;
      String count= "";
        ConnectDB();
         // List booklist=new ArrayList();
       String query="SELECT if("+rooms+"<=(SELECT count(room_id) from hotel.room where room_bookStatus='false' AND room_type='"+roomType+"'),'available','not available')"; 
          
       String flag="false";
          try {
                ResultSet rs = st.executeQuery(query);
                
                rs.next();
                count = rs.getString(1);
                System.out.println("Number of records in the cricketers_data table: "+count);      
            
                
            } catch (SQLException ex) {
                Logger.getLogger(loginData.class.getName()).log(Level.SEVERE, null, ex);
            }
         
      return count;
    }

    
    
      private void ConnectDB() {
       
         try {
             Class.forName(driver);
             Connection con=DriverManager.getConnection(url, "root","");
               st  = con.createStatement();
         } catch (ClassNotFoundException | SQLException ex) {
             Logger.getLogger(unameCheck.class.getName()).log(Level.SEVERE, null, ex);
         }
    
     }
    
}
