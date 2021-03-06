package com.dihar.common.fileupload.dao;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dihar.common.DbConnection;

public class PublicationDownloadDao {

	public String readFileFromDatabase(String p_id) {
		try {
			String file_details=null;
			String fileName = null;
			String fileExtention = null;
			Blob blob = null;
			
			Connection con = DbConnection.getInstance().getConnection();
			PreparedStatement ps = con.prepareStatement("select * from publication_master where publication_id=?");
			ps.setString(1, p_id);
			ResultSet rs2 = ps.executeQuery();
			while (rs2.next()) {
				fileName = rs2.getString(5);
				blob = rs2.getBlob(6);
				fileExtention = rs2.getString(7);

			}
			InputStream is = blob.getBinaryStream();
			FileOutputStream fos = new FileOutputStream("C:\\diharfilebuffer\\" + fileName +"");
			int b = 0;
			while ((b = is.read()) != -1) {
				fos.write(b);
			}
            fos.close();
            file_details=fileName;
			return file_details;

		} catch (

		Exception e) {
			System.out.println("Error Occur : "+e);
		}
		return null;
	}
}
