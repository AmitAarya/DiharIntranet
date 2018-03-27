package com.dihar.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.dihar.common.DBConnection;

public class DateUtils {
	private static Logger logger = LoggerFactory.getLogger(DateUtils.class);

	public static String getDateInExpectedFormat(String format, String dateInString, String returnformat) {
		SimpleDateFormat formatter = new SimpleDateFormat(format);
		Date date = null;
		try {
			date = formatter.parse(dateInString);
			formatter = new SimpleDateFormat(returnformat);
			return formatter.format(date);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String getDateInLocaleFormat(String format, String dateInString, String returnformat) {
		SimpleDateFormat formatter = new SimpleDateFormat(format, Locale.ENGLISH);
		Date date = null;
		try {
			date = formatter.parse(dateInString);
			formatter = new SimpleDateFormat(returnformat);
			return formatter.format(date);
		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String convertDateDBToLocal(String dateString) throws ParseException {
		String ds1 = dateString;
		try {
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat sdf2 = new SimpleDateFormat("dd-MM-yyyy");
			String ds2 = sdf2.format(sdf1.parse(ds1));
			return ds2;
		} catch (Exception e) {
			logger.info(e.getMessage());
		}
		return null;
	}

	public static String convertDateTime(String DateInput) {
		String ds1 = DateInput;
		try {
			SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy");
			SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
			String ds2 = sdf2.format(sdf1.parse(ds1));
			return ds2;
		} catch (Exception e) {
			logger.info(e.getMessage());
		}
		return null;
	}
	public static String getCurrentDateFromDB(Connection connection ) throws SQLException {
		ResultSet rs = DBConnection.getInstance().executeQuery(connection, "select DATE_FORMAT(NOW(),'%Y-%m-%d %T')");
		rs.first();
		return rs.getString(1);	 
	}
}
