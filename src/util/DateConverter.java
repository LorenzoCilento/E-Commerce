package util;

import java.sql.Date;

public class DateConverter {

	public java.sql.Date convertStringInDateSql(String date) {
		Date sqlDate = Date.valueOf(date);
		return sqlDate;
	}
	
	public String convertDateSqlInString(java.sql.Date date){
		return date.toString();
	}

}
