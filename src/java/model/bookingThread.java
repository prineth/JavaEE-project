/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hirun
 */
public class bookingThread extends Thread{
    
    private int room;
    private String roomType;
    private int userid;
    private int night;
    private int noOfGuest;
    private String ArrivalDate;
    private String DepatureDate;

    public void availdoneThread(int room, String roomType, int userid, int nights, int noOfGuest, String ArrivalDate, String DepatureDate) {
        
        
        this.room = room;
        this.roomType = roomType;
        this.userid = userid;
        this.night = nights;
        this.noOfGuest = noOfGuest;
        this.ArrivalDate = ArrivalDate;
        this.DepatureDate = DepatureDate;
        
        this.start();
        
    }
    
    @Override
    public void run() {
     
          doneal c = new doneal();
        c.availdone(room, roomType, userid, night, noOfGuest, ArrivalDate, DepatureDate);
   
    
    }
}

