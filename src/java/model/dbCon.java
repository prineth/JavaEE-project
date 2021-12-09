
package model;
import java.sql.*;
import jdk.nashorn.internal.parser.TokenType;

public class dbCon {
    
//    ========================================================
//    === Create connection from mysql server work bench =====
//    ========================================================
    public Connection createConnection() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
        return con;
    }
    
//    ========================================================
//    =================check user before login ===============
//    ========================================================
    
    public boolean checkUser(String email,String pass)
    {
        boolean st =false;
                  try {
                      PreparedStatement ps = createConnection().prepareStatement("select * from student where email=? and pass=?");
                      ps.setString(1, email);
                      ps.setString(2, pass);
                      ResultSet rs =ps.executeQuery();
                      st = rs.next();

                  }
                    catch(Exception e) {
                        e.printStackTrace();
                    }
        
                     return st;   
    }
    
//    ========================================================
//    =================user registration method ==============
//    ========================================================
    
    public boolean regUser(String name, String email, String pass) throws ClassNotFoundException,SQLException
    {
        PreparedStatement ps = createConnection().prepareStatement("insert into student values(?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, pass);
        
        int i = ps.executeUpdate();
        
        if (i > 0) 
            return true;
        else
            return false;
            
        
    }
}
