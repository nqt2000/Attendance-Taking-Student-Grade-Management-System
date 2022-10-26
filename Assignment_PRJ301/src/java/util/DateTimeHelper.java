/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.Date;

/**
 *
 * @author sonnt
 */
public class DateTimeHelper {
    public static float getDaystoCurrent(Date d)
    {
        java.util.Date e = new java.util.Date(d.getTime());
        java.util.Date current = new java.util.Date();
        long diff = current.getTime() - e.getTime();
        return ((float)diff / (1000*60*60*24));
    }
    
}
