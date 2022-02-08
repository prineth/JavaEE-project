package model;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class contact_us {
    public void contactUsDetails(String name, String email, String subject, String message) {
        
        dbconnection con = new dbconnection();
        
        con.ConnectDB();
        String query = "insert into contact_us(name,email,subject,message) values ('"+name+"','"+email+"','"+subject+"','"+message+"')";

        try {
            con.st.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(addSignData.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
