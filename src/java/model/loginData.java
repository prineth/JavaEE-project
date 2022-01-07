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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hirun
 */
public class loginData {

    String url = "jdbc:mysql://localhost:3306/hotel";
String driver  = "com.mysql.jdbc.Driver";
Statement st;
    
    public List getDatas(String email, String pass) {
        
          ConnectDB();
               
        List booklist=new ArrayList();
        ConnectDB();
        String query="SELECT * FROM user where email LIKE '%"+email+"%'";
        
            try {
                ResultSet rs = st.executeQuery(query);
                
                
                 while(rs.next())
            {
               
                booklist.add(rs.getString("email"));
                booklist.add(rs.getString("password"));   
                booklist.add(rs.getInt("id"));
            }
                
            } catch (SQLException ex) {
                Logger.getLogger(loginData.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        return booklist;
        
        
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
