package model.adminModel;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.addSignData;

import model.adminModel.dbconnection;

public class mod_guestDelete {
    
    public void deleteGuestById(int guestID) {
        
        dbconnection con = new dbconnection();
        
        con.ConnectDB();
        String query = "delete from user where id=" + guestID + "";

        try {
            con.st.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(addSignData.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
}
