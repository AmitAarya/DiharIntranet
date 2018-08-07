package com.dihar.common.txn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.struts.upload.FormFile;

import com.dihar.common.DbConnection;
import com.dihar.utils.DateUtils;
import com.dihar.utils.ReusableStaticMethods;

import oracle.jdbc.OraclePreparedStatement;

public class TxnFileUploadDao {
	public boolean isFileInsertedInDatabase(String heading, String type,String fileName,FormFile f) {
		try {
			byte[] fileData  = f.getFileData();	
			String noti_id=String.valueOf(ReusableStaticMethods.getNotificationId());
						
			String[] extention_array = f.getFileName().split("\\.");
			String extention = extention_array[extention_array.length-1];
			
			Connection con =DbConnection.getInstance().getConnection();
			OraclePreparedStatement ps = (OraclePreparedStatement)con.prepareStatement(
					"insert into notification_master values(?,?,?,?,?,?,?,'TY-400')");			
			
			ps.setString(1, noti_id);
			ps.setString(2, heading);
			ps.setString(3, type);
			ps.setString(4, fileName);
			ps.setBytesForBlob(5, fileData);
			ps.setString(6, extention);			
			ps.setTimestamp(7, DateUtils.getCurrentDateFromDb());
			//ps.setDate(2, new Date(500));
			
			int k = ps.executeUpdate();
			if (k > 0) {
				return true;
			} 
		} catch (Exception e) {
			System.out.println("Exception Occur : "+e);
		}
		return false;

	}

	public boolean isFileInsertedInDatabase(String txn_id, String returnremarks, FormFile myFile) {
                 
                 String TXN_TYPE=null;	
                 String TXN_TYPE_SUBCATAGORY=null;	
                 String TXN_APPLICANT_CADRE=null;
                 String TXN_APPLICANT_ID=null;
                 String TXN_HOD_CADRE=null;
                 String TXN_HOD_ID=null;
		 try {
	      
	            DbConnection dbconnection=DbConnection.getInstance();
	            Connection con = dbconnection.getConnection();
	            PreparedStatement ps;
	            ps = con.prepareStatement("select * from txn_master where txn_id=?");
	            ps.setString(1, txn_id);
	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	            	
	            	TXN_TYPE=rs.getString(3);
	                TXN_TYPE_SUBCATAGORY=rs.getString(4);
	                TXN_APPLICANT_CADRE=rs.getString(5);
	                TXN_APPLICANT_ID=rs.getString(6);
	                TXN_HOD_CADRE=rs.getString(7);
	                TXN_HOD_ID=rs.getString(8);
	            }
	            
	            
	            
	            byte[] fileData  = myFile.getFileData();	
				String filename=myFile.getFileName();				
				String[] extention_array = myFile.getFileName().split("\\.");
				String extention = extention_array[extention_array.length-1];	
				OraclePreparedStatement ps2 = (OraclePreparedStatement)con.prepareStatement(
						"insert into txn_ret_master values(?,?,?,?,?,?,?,?,?,?,?,?,?)");			
		
					ps2.setString(1, txn_id);
					ps2.setTimestamp(2, DateUtils.getCurrentDateFromDb());
					ps2.setString(3, TXN_TYPE);
					ps2.setString(4, TXN_TYPE_SUBCATAGORY);
					ps2.setString(5, TXN_HOD_CADRE);
					ps2.setString(6, TXN_HOD_ID);
					ps2.setString(7, TXN_APPLICANT_CADRE);
					ps2.setString(8, TXN_APPLICANT_ID);
					ps2.setString(9, filename);
					ps2.setBytesForBlob(10, fileData);
					ps2.setString(11, extention);
					ps2.setString(12, returnremarks);
					ps2.setString(13, "OPEN");
					
					int k = ps2.executeUpdate();
					if (k > 0) {
						return true;
					} 
	            
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
		return false;
	}
}
