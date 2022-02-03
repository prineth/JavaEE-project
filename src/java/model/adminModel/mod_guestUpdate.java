package model.adminModel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.addSignData;

public class mod_guestUpdate {

    public int updateGuestById(int guestID) throws SQLException {
        //Registering the Driver
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        //Getting the connection
        String mysqlUrl = "jdbc:mysql://localhost:3306/hotel";
        Connection con = DriverManager.getConnection(mysqlUrl, "root", "");
//        System.out.println("Connection established......");
        //Creating the Statement object
        Statement stmt = con.createStatement();
        //Query to get the number of rows in a table
        String query = "select count from user where id=" + guestID + "";
        //Executing the query
        ResultSet rs = stmt.executeQuery(query);
        //Retrieving the result
        rs.next();
        int count = rs.getInt(1);
//        System.out.println("count: " + count);
        return count;
    }

}
