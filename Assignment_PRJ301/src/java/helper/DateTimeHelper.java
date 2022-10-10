/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package helper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Ngo Tung Son
 */
public class DateTimeHelper {
    public static Date toDate(String datetime, String format) throws ParseException
    {
       return new SimpleDateFormat(format).parse(datetime);
    }
}
