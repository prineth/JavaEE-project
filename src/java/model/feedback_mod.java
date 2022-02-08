package model;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class feedback_mod {

    public void feedbackDetails(int id, String feedback) {

        dbconnection con = new dbconnection();

        con.ConnectDB();
        String query = "insert into feedback(guestid,feedback) values("+id+",'"+feedback+"')";

        try {
            con.st.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(addSignData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
