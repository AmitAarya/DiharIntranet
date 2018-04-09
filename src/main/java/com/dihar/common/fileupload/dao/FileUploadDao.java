package com.dihar.common.fileupload.dao;
import java.sql.Connection;
import org.apache.struts.upload.FormFile;

import com.dihar.common.DbConnection;
import com.dihar.utils.DateUtils;
import com.dihar.utils.ReusableStaticMethods;

import oracle.jdbc.OraclePreparedStatement;

public class FileUploadDao {
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
}
