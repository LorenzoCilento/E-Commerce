package controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.regex.Pattern;

public class MainProve {

//	public static void main(String[] argv) {
//
//        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
//        String dateInString = "7-06-2013";
//
//        try {
//
//            Date date = formatter.parse(dateInString);
//            System.out.println(date.getClass());
//            System.out.println(formatter.format(date).getClass());
//            System.out.println(date);
//            System.out.println(formatter.format(date));
//
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//
//    }
	public static void main(String[] argv) {
	
		String date = (new java.sql.Date(d.getTime())).toString();
	
	System.out.println(date);
	}

}
