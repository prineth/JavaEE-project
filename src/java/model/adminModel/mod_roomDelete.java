package model.adminModel;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.addSignData;
import model.adminModel.dbconnection;

public class mod_roomDelete {
    public void deleteRoomById(int roomID) {
        
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
