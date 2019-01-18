package com.dihar.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import javax.imageio.ImageIO;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DbConnection {
	private static Logger logger = LoggerFactory.getLogger(DbConnection.class);
	private static DbConnection dbconnection = null;
	// private static Object mutex= new Object();
	private static Connection con = null;

	private DbConnection() {
	}

	public static DbConnection getInstance() {
		if (dbconnection == null) {
			synchronized (DbConnection.class) {
				if (dbconnection == null)
					dbconnection = new DbConnection();
			}
		}
		return dbconnection;
	}

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		if (con == null) {
			String driver = "oracle.jdbc.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String username = "dihar";
			String password = "@dihar";
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
			return con;
		} else {
			return con;
		}
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

	/**
	 * @author Amit Kumar
	 */
	public ResultSet executeQuery(Connection connection, String Query, Object... args) throws SQLException {
		PreparedStatement ps = connection.prepareStatement(Query);
		int i = 1;
		for (Object arg : args) {
			logger.info("Arg Class : " + arg.getClass());
			if (arg.getClass().toString().trim().equals("class java.lang.String"))
				ps.setString(i++, arg.toString());
			else if (arg.getClass().toString().trim().equals("class java.lang.Integer"))
				ps.setInt(i++, (int) arg);
			else if (arg.getClass().toString().trim().equals("class java.lang.Float"))
				ps.setFloat(i++, (float) arg);
			else if (arg.getClass().toString().trim().equals("class java.lang.Double"))
				ps.setDouble(i++, (double) arg);
		}
		ResultSet rs = ps.executeQuery();
		return rs;
	}

	/**
	 * @author Amit Kumar
	 */
	public int executeUpdate(Connection connection, String Query, Object... args) throws SQLException {
		PreparedStatement ps = connection.prepareStatement(Query);
		int i = 1;
		for (Object arg : args) {
			logger.info("Arg Class : " + arg.getClass());
			if (arg.getClass().toString().trim().equals("class java.lang.String"))
				ps.setString(i++, arg.toString());
			else if (arg.getClass().toString().trim().equals("class java.lang.Integer"))
				ps.setInt(i++, (int) arg);
			else if (arg.getClass().toString().trim().equals("class java.lang.Float"))
				ps.setFloat(i++, (float) arg);
			else if (arg.getClass().toString().trim().equals("class java.lang.Double"))
				ps.setDouble(i++, (double) arg);
			else if (arg.getClass().toString().trim().equals("class java.sql.Timestamp"))
				ps.setTimestamp(i++,  (Timestamp) arg);
		}
		return ps.executeUpdate();
	}

	public static void main(String args[]) {

		 new DbConnection().createDatabase();
		//new DbConnection().insertPdfInDatabase();
		//new DbConnection().readPdfInDatabase();
	}

	public void dropAllTable() {
		Connection conn = null;
		Statement stmt = null;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			// stmt.executeUpdate(BOOK_RETURN_MASTER);
			stmt.executeUpdate("drop table LOGIN_MASTER");

			JOptionPane.showMessageDialog(null, "DELETED");
			// System.out.println("LIBRARY MANAGEMENT SYSTEM DATABASE CREATED
			// WITH ALL TABLE .. !!");

		} catch (ClassNotFoundException e) {
			System.out.println("error: failed to load Oracle driver.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("error: failed to create a connection object.");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("other error:");
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
				conn.close();
			} catch (Exception e) {
			}
		}

	}

	public boolean createDatabase() {
		Connection conn = null;
		Statement stmt = null;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			stmt.executeUpdate(DbQuery.DdlQuery.PUBLICATION_MASTER);
			//stmt.executeUpdate(DbQuery.DdlQuery.TXN_MASTER);
			//stmt.executeUpdate(DbQuery.DdlQuery.ROOT_MASTER);
			//stmt.executeUpdate(DbQuery.DdlQuery.DIRECTOR_MASTER);
			//stmt.executeUpdate(DbQuery.DdlQuery.ADMIN_MASTER);
			//stmt.executeUpdate(DbQuery.DdlQuery.DSA_MASTER);
			//stmt.executeUpdate(DbQuery.DdlQuery.DRDS_MASTER);
			//stmt.executeUpdate(DbQuery.DdlQuery.DRTC_MASTER);
			//stmt.executeUpdate(DbQuery.DdlQuery.AVATAR_MASTER);
			
			
			 // stmt.executeUpdate(DbQuery.DdlQuery.NOTIFICATION_MASTER);
			/*  stmt.executeUpdate("insert into login_master values('dihar', '@dihar','common','ACTIVE')");
			  stmt.executeUpdate("insert into login_master values('director', '@director','director','ACTIVE')");
			  stmt.executeUpdate("insert into login_master values('admin', '@admin','admin','ACTIVE')");
			  stmt.executeUpdate("insert into login_master values('dsa', '@dsa','dsa','ACTIVE')");
			  stmt.executeUpdate("insert into login_master values('drds', '@drds','drds','ACTIVE')");
			  stmt.executeUpdate("insert into login_master values('drtc', '@drtc','drtc','ACTIVE')");
			  stmt.executeUpdate("insert into login_master values('root', '@root','root','ACTIVE')");
			*/
			
			
			System.out.println("Table created...");
			/*
			 * stmt.executeUpdate(DbQuery.DdlQuery.LOGIN_MASTER);
			 * 
			 * stmt.
			 * executeUpdate("insert into login_master values('dihar', '123','common')"
			 * );
			 */
			// System.out.println("LIBRARY MANAGEMENT SYSTEM DATABASE CREATED
			// WITH ALL TABLE .. !!");
			return true;

		} catch (ClassNotFoundException e) {
			System.out.println("error: failed to load Oracle driver.");
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("error: failed to create a connection object.");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("other error:");
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
				// conn.close();
			} catch (Exception e) {
			}
		}
		return false;
	}

	public boolean insertPdfInDatabase() {
		try {

			JFileChooser jfc = new JFileChooser();
			String[] suffices = ImageIO.getReaderFileSuffixes();
			for (int i = 0; i < suffices.length; i++) {
				FileFilter filter = new FileNameExtensionFilter(suffices[i] + " files", suffices[i]);
				jfc.addChoosableFileFilter(filter);
			}
			jfc.showDialog(null, "open file");
			File f = jfc.getSelectedFile();
			String path = f.getAbsolutePath();

			// Class.forName("oracle.jdbc.OracleDriver");
			// Connection con =
			// DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
			// "system", "@amit");
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into notification_master values('1', 'First Heading','common',?,'pdf',?,'TY-400')");

			FileInputStream fin1 = new FileInputStream(path);
			ps.setBinaryStream(1, fin1, (int) f.length());
			ps.setDate(2, new Date(1000));
			int k = ps.executeUpdate();
			if (k > 0) {
				JOptionPane.showMessageDialog(null, "PDF UPDATED !!");
				return true;

			} else {
				JOptionPane.showMessageDialog(null, "ERROR OCCUR  !!");
			}
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, e);
		}
		return false;

	}

	public boolean readPdfInDatabase() {
		try {

			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from notification_master where noti_id='2'");

			ResultSet rs2 = ps.executeQuery();
			while (rs2.next()) {
				
				Blob blob = rs2.getBlob(4);
				InputStream is = blob.getBinaryStream();

				FileOutputStream fos = new FileOutputStream("D:\\DownloadCreditCardsucess.pdf");
				int b = 0;
				while ((b = is.read()) != -1) {
					fos.write(b);
				}
				JOptionPane.showMessageDialog(null, "PDF UPDATED !!");
				return true;

			}
		} catch (

		Exception e) {
			JOptionPane.showMessageDialog(null, e);
		}
		return false;

	}

}
