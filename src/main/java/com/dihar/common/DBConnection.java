package com.dihar.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.dihar.utils.ConfigManager;

public class DBConnection {
	private static Logger logger = LoggerFactory.getLogger(DBConnection.class);
	private static DBConnection dbconnection = null;
	//private static Object mutex= new Object();
	private static Connection conLms = null;
	private static Connection conDge = null;
	private static Connection conIge = null;
	private static Connection conSle = null;
	private static Connection conOla = null;
	private DBConnection(){}
	
	public static DBConnection getInstance() {
		if (dbconnection == null) {
			synchronized (DBConnection.class){
				if(dbconnection==null)
					dbconnection= new DBConnection();
			}
		}
			return dbconnection;		
	}

	public Connection getDBConnectionLms() {
		try {
			if (conLms == null) {
				String url = ConfigManager.getProperty("DBConURL")+"/"+ConfigManager.getProperty("DBLMS");
				String user = ConfigManager.getProperty("DBConnUser");
				String password = ConfigManager.getProperty("DBConnPwd");
				String driver = ConfigManager.getProperty("DBConnDriver");
				Class.forName(driver);
				conLms = DriverManager.getConnection(url, user, password);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conLms;
	}

	public Connection getDBConnectionDge() {
		try {
			if (conDge == null) {
				String url = ConfigManager.getProperty("DBConURL")+"/"+ConfigManager.getProperty("DBDGE");
				String user = ConfigManager.getProperty("DBConnUser");
				String password = ConfigManager.getProperty("DBConnPwd");
				String driver = ConfigManager.getProperty("DBConnDriver");
				Class.forName(driver);
				conDge = DriverManager.getConnection(url, user, password);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conDge;
	}

	public Connection getDBConnectionIge() {
		try {
			if (conIge == null) {
				String url = ConfigManager.getProperty("DBConURL")+"/"+ConfigManager.getProperty("DBIGE");
				String user = ConfigManager.getProperty("DBConnUser");
				String password = ConfigManager.getProperty("DBConnPwd");
				String driver = ConfigManager.getProperty("DBConnDriver");
				Class.forName(driver);
				conIge = DriverManager.getConnection(url, user, password);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conIge;
	}

	public Connection getDBConnectionSle() {
		try {
			if (conSle == null) {
				String url = ConfigManager.getProperty("DBConURL")+"/"+ConfigManager.getProperty("DBSLE");
				String user = ConfigManager.getProperty("DBConnUser");
				String password = ConfigManager.getProperty("DBConnPwd");
				String driver = ConfigManager.getProperty("DBConnDriver");
				Class.forName(driver);
				conSle = DriverManager.getConnection(url, user, password);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conSle;
	}

	public Connection getDBConnectionOla() {
		try {
			if (conOla == null) {
				String url = ConfigManager.getProperty("DBConOlaURL");
				String user = ConfigManager.getProperty("DBConnUser");
				String password = ConfigManager.getProperty("DBConnPwd");
				String driver = ConfigManager.getProperty("DBConnDriver");
				Class.forName(driver);
				conOla = DriverManager.getConnection(url, user, password);
			}
		} catch (Exception e) {
			System.out.println(e);// e.printStackTrace();
		}
		return conOla;
	}

	public Connection getDBConnectionPms() {
		try {
			if (conDge == null) {
				String url = ConfigManager.getProperty("DBConURL")+"/"+ConfigManager.getProperty("SIT_PMS");
				String user = ConfigManager.getProperty("DBConnUser");
				String password = ConfigManager.getProperty("DBConnPwd");
				String driver = ConfigManager.getProperty("DBConnDriver");
				Class.forName(driver);
				conDge = DriverManager.getConnection(url, user, password);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conDge;
	}

	public void closeConnection(Connection con) {
		try {
			if (con != null && !con.isClosed()) {
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public String getFinalQuery(String value) {

		String tempQuery = value;

		tempQuery = tempQuery.contains("DBLMS") ? tempQuery.replace("DBLMS", ConfigManager.getProperty("DBLMS"))
				: tempQuery;

		tempQuery = tempQuery.contains("dbDGE") ? tempQuery.replace("dbDGE", ConfigManager.getProperty("dbDGE"))
				: tempQuery;

		/*
		 * //changed performed by Amit tempQuery2 = tempQuery1.contains("dbSLE")
		 * ? tempQuery1.replace( "dbSLE", QueryFromProperty("dbSLE")) :
		 * tempQuery1; // tempQuery3 = tempQuery2.contains("dbPMS")
		 * ?tempQuery2.replace( "dbPMS", QueryFromProperty("dbPMS")) :
		 * tempQuery2; // finalQuery = tempQuery3.contains("dbIPE") ?
		 * tempQuery3.replace( "dbIPE", QueryFromProperty("dbIPE")) :
		 * tempQuery3;
		 * 
		 * System.out.println("Final Query :- " + finalQuery);
		 * SeleniumDriver.log.info("Final Query :- " + finalQuery); return
		 * finalQuery;
		 */
		return tempQuery;

	}

	/**
	 * @author Amit Kumar
	 */
	public ResultSet executeQuery(Connection connection,String Query,Object... args) throws SQLException {
		PreparedStatement ps = connection.prepareStatement(Query);
		int i=1;
		 for(Object arg:args) {
			 logger.info("Arg Class : "+arg.getClass());
			 if(arg.getClass().toString().trim().equals("class java.lang.String"))
			  ps.setString(i++, arg.toString());
			 else if(arg.getClass().toString().trim().equals("class java.lang.Integer"))
				  ps.setInt(i++, (int) arg);
			 else if(arg.getClass().toString().trim().equals("class java.lang.Float"))
				  ps.setFloat(i++, (float) arg);
			 else if(arg.getClass().toString().trim().equals("class java.lang.Double"))
				  ps.setDouble(i++, (double) arg);
		   }
		ResultSet rs = ps.executeQuery();
		return rs;
	}
	
	/**
	 * @author Amit Kumar
	 */
	public int executeUpdate(Connection connection, String Query,Object... args) throws SQLException {
		PreparedStatement ps = connection.prepareStatement(Query);
		int i=1;
		 for(Object arg:args) {
			 logger.info("Arg Class : "+arg.getClass());
			 if(arg.getClass().toString().trim().equals("class java.lang.String"))
			  ps.setString(i++, arg.toString());
			 else if(arg.getClass().toString().trim().equals("class java.lang.Integer"))
				  ps.setInt(i++, (int) arg);
			 else if(arg.getClass().toString().trim().equals("class java.lang.Float"))
				  ps.setFloat(i++, (float) arg);
			 else if(arg.getClass().toString().trim().equals("class java.lang.Double"))
				  ps.setDouble(i++, (double) arg);
		   }
		return ps.executeUpdate();
	}
}
