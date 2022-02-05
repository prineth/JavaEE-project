package model.adminModel;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.addSignData;

public class mod_roomUpdate {

    public void updateRoomById(int roomID) {

        dbconnection con = new dbconnection();

        con.ConnectDB();
        String query = "delete from room where room_id=" + roomID + "";

        try {
            con.st.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(addSignData.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
