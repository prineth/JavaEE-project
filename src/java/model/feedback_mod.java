package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import static model.dbcon.stmt;

public class feedback_mod {

    static Connection conn = null;

    public static int ID = 4;
    public static String Feedback = "greate";

    public static void feedbackDetails(int id, String feedback) throws SQLException {

        feedback_mod.ID = 0;
        feedback_mod.Feedback = null;
        String query = "insert into feedback(guestid,feedback) values(" + id + ",'" + feedback + "')";
        PreparedStatement pstmt = (PreparedStatement) conn.prepareStatement(query);
        int rs = pstmt.executeUpdate();

        System.out.println("Done");
        try {
            if (stmt != null || conn != null) {
                conn.close();
            }
        } catch (SQLException se) {
            Logger.getLogger(feedback_mod.class.getName()).log(Level.SEVERE, null, se);
        }


    }

    public static void main(String[] args) throws SQLException {
        dbcon connect = dbcon.getInstance();
        conn = connect.getConnection();
        feedbackDetails(ID, Feedback);
    }
}
