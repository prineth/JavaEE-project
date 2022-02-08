package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class dbconnection {

    String url = "jdbc:mysql://localhost:3306/hotel";
    String driver = "com.mysql.jdbc.Driver";
    Statement st;

    void ConnectDB() {

        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(unameCheck.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
