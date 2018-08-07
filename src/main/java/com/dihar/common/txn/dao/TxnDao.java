package com.dihar.common.txn.dao;

import java.sql.Connection;

import org.apache.struts.upload.FormFile;

import com.dihar.common.DbConnection;
import com.dihar.utils.DateUtils;
import com.dihar.utils.ReusableStaticMethods;

import oracle.jdbc.OraclePreparedStatement;

public class TxnDao {

	public boolean isTxnPerformed(String txnType, String txnTypeSubCatagory, String applicantId,String hodCadre, String hodName,
			FormFile txnFile, String remarks) {
		try {
			int a=0;
			String fileName  = txnFile.getFileName();
			byte[] fileData  = txnFile.getFileData();	
			String txnId=String.valueOf(ReusableStaticMethods.getTxnId());
			String applicantCadre=ReusableStaticMethods.getApplicantCadre(applicantId);
			String hodId="2";
			
			
			String[] extention_array = txnFile.getFileName().split("\\.");
			String extention = extention_array[extention_array.length-1];
			
			
			Connection con =DbConnection.getInstance().getConnection();
			OraclePreparedStatement ps = (OraclePreparedStatement)con.prepareStatement(
					"insert into txn_master values(?,?,?,?,?,?,?,?,?,?,?,?,?)");			
			
			ps.setString(1, txnId);
			ps.setTimestamp(2, DateUtils.getCurrentDateFromDb());
			ps.setString(3, txnType);
			ps.setString(4, txnTypeSubCatagory);
			ps.setString(5, applicantCadre);
			ps.setString(6, applicantId);
			ps.setString(7, hodCadre);
			ps.setString(8, hodId);
			ps.setString(9, fileName);
			ps.setBytesForBlob(10, fileData);
			ps.setString(11, extention);
			ps.setString(12, remarks);
			ps.setString(13, "OPEN");
			
			int k = ps.executeUpdate();
			if (k > 0) {
				return true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Exception Occur : "+e);
		}
		return false;

	}

}
