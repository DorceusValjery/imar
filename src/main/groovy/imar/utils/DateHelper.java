package imar.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

public class DateHelper {
    private static SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");

    public static Date getDate(String stringDate){
        Date date;
        try{
            date = dateFormat.parse(stringDate);
        }catch(ParseException exp){
            date = new Date();
        }
        return date;
    }

    public static Date getDate(LocalDate localDate){
        return Date.from(localDate.atStartOfDay(ZoneId.systemDefault()).toInstant());
    }
}
