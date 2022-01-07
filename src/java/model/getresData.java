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
public class getresData {

    String url = "jdbc:mysql://localhost:3306/hotel";
    String driver  = "com.mysql.jdbc.Driver";
    Statement st;
    
    public List getDatass(int userid) {
             ConnectDB();
               
        List booklist=new ArrayList();
        ConnectDB();
        String query="SELECT * FROM room_reservation WHERE user_id="+userid+"";
        
            try {
                ResultSet rs = st.executeQuery(query);
                
                
                 while(rs.next())
            {
               
                booklist.add(rs.getInt("res_id"));
                booklist.add(rs.getInt("room_id"));   
                booklist.add(rs.getInt(""));
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
             Logger.getLogger(getresData.class.getName()).log(Level.SEVERE, null, ex);
         }
    
     }
    
}

