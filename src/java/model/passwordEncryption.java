/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hirun
 */
public class passwordEncryption {
    public static String MD5(String input){
        try {
            //String hashText = "hiruna";
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger number = new BigInteger(1,messageDigest);
            String hashText = number.toString(16);
            while(hashText.length() < 32){
                hashText = "0" + hashText;
            }
            System.out.println(hashText);
            return hashText;
            
        } catch (NoSuchAlgorithmException e) {
           throw new RuntimeException(e);
        }
        
    }
    
    public static void main(String[] args) {
       // passwordEncryption tt = new passwordEncryption();
       // System.out.print(tt.MD5("hiruna"));

    }  
   
}


