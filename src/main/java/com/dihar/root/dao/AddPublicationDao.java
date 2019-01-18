package com.dihar.root.dao;

import java.sql.Connection;

import org.apache.struts.upload.FormFile;

import com.dihar.common.DbConnection;
import com.dihar.utils.DateUtils;
import com.dihar.utils.ReusableStaticMethods;

import oracle.jdbc.OraclePreparedStatement;

public class AddPublicationDao {

	public boolean isFileInsertedInDatabase(String p_heading, String p_year, String p_author, String fileName,
			FormFile myFile) {
		try {
			byte[] fileData  = myFile.getFileData();	
			String p_id=String.valueOf(ReusableStaticMethods.getPublicationId());
						
			String[] extention_array = myFile.getFileName().split("\\.");
			String extention = extention_array[extention_array.length-1];
			
			Connection con =DbConnection.getInstance().getConnection();
			OraclePreparedStatement ps = (OraclePreparedStatement)con.prepareStatement(
					"insert into publication_master values(?,?,?,?,?,?,?,?,'root')");			
			
			ps.setString(1, p_id);
			ps.setString(2, p_heading);
			ps.setString(3, p_year);
			ps.setString(4, p_author);
			
			ps.setString(5, fileName);
			
			ps.setBytesForBlob(6, fileData);
			ps.setString(7, extention);			
			ps.setTimestamp(8, DateUtils.getCurrentDateFromDb());
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
