package controller;

import java.util.Date;
import java.util.regex.Pattern;

public class MainProve {

	public static void main(String[] args) {
		
		String dateEntered="2016-31-02";
		 if (!Pattern.matches("\\d{4}-\\d{2}-\\d{2}",dateEntered) ) {
		        System.out.println("Not a date"); 
		    }
		 else
			 System.out.println("okok");

	}

}
