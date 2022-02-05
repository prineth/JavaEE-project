package model.adminModel;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.addSignData;


public class mod_roomAdd {
    public void addRoom(String roomType,String roomStatus,String roomCharge,int roomQuantity,String roomDescription) {

        dbconnection con = new dbconnection();

        con.ConnectDB();
        String query = "insert into hotel.room(room_type,room_bookStatus,room_charge,room_quantity,room_description) values('"+roomType+"','"+roomStatus+"','"+roomCharge+"',"+roomQuantity+",'"+roomDescription+"')";

        try {
            con.st.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(addSignData.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
