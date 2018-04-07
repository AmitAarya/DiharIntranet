package com.dihar.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.dihar.common.DbConnection;

public class DateUtils {
	private static Logger logger = LoggerFactory.getLogger(DateUtils.class);

	
	public static Timestamp getCurrentDateFromDb() {
        try {
            java.util.Date today = null;
            Connection con = DbConnection.getInstance().getConnection();
            PreparedStatement ps;
            // ps = con.prepareStatement("SELECT TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS') \"NOW\" FROM DUAL;");
            ps = con.prepareStatement("SELECT SYSTIMESTAMP FROM DUAL");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                today = rs.getDate(1);
            }
            long t = today.getTime();
            java.sql.Timestamp sqlTimestamp = new java.sql.Timestamp(t);          
            return sqlTimestamp;
        } catch (ClassNotFoundException ex) {
            // Logger.getLogger(DateUtils.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        } catch (SQLException ex) {
            // Logger.getLogger(DateUtils.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }

    }

	
	
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
		ResultSet rs = DbConnection.getInstance().executeQuery(connection, "select DATE_FORMAT(NOW(),'%Y-%m-%d %T')");
		rs.first();
		return rs.getString(1);	 
	}
}
