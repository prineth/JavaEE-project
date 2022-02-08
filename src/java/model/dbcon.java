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
import java.util.Properties;

/**
 *
 * @author hirun
 */
public class dbcon {
    static String newLine = System.getProperty("line.separator");

    volatile static dbcon s;

    public static Connection conn; 
    public static Statement stmt = null;

    private dbcon() throws SQLException {
        // create single instance of DB connection 
        Properties connectionProps = new Properties();
        connectionProps.put("user", "root");
        connectionProps.put("password", "");
        // port & db name 
        conn = DriverManager.getConnection("jdbc:mysql://"
                + "localhost" + ":" + "3306" + "/" + "hotel",
                connectionProps);
    }

    public Connection getConnection() throws SQLException {
        return conn; 
    }

    public static dbcon getInstance() throws SQLException {
        dbcon s = dbcon.s;

        if (s == null) {
            synchronized(dbcon.class) {
                s = dbcon.s;
                if (s == null) {
                    dbcon.s = s = new dbcon(); 
                    System.out.print("First DB connection created." + newLine); 
            }
        }
    }
        conn = s.getConnection();
        return s; 
    }
}
