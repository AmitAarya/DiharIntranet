package com.dihar.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.dihar.common.DbConnection;
public class ReusableStaticMethods {
	private static Logger logger = LoggerFactory.getLogger(ReusableStaticMethods.class);
    
   
    public static int getNotificationId() {
        try {
            int last_noti_id = 0, noti_count=0;
            DbConnection dbconnection=DbConnection.getInstance();
            Connection con = dbconnection.getConnection();
            PreparedStatement ps, ps2;
            ps = con.prepareStatement("select count(noti_id) from NOTIFICATION_MASTER");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	noti_count = rs.getInt(1);
            }
            if (noti_count == 0) {
                return 1;
            } else {

                ps2 = con.prepareStatement("select max(noti_id) from NOTIFICATION_MASTER");
                ResultSet rs2 = ps2.executeQuery();

                while (rs2.next()) {
                	last_noti_id = rs2.getInt(1);                  
                }
                return last_noti_id + 1;

            }
        } catch (Exception e) {
        	logger.info("Error Occut !!");
        }
        return 0;
    }
    
    
    public static int getTxnId() {
        try {
            int last_txn_id = 0, txn_count=0;
            DbConnection dbconnection=DbConnection.getInstance();
            Connection con = dbconnection.getConnection();
            PreparedStatement ps, ps2;
            ps = con.prepareStatement("select count(txn_id) from txn_master");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	txn_count = rs.getInt(1);
            }
            if (txn_count == 0) {
                return 1;
            } else {

                ps2 = con.prepareStatement("select max(txn_id) from txn_master");
                ResultSet rs2 = ps2.executeQuery();

                while (rs2.next()) {
                	last_txn_id = rs2.getInt(1);                  
                }
                return last_txn_id + 1;

            }
        } catch (Exception e) {
        	logger.info("Error Occut !!");
        }
        return 0;
    }


	public static String getApplicantCadre(String applicantId) {
		 String userCadre = null; 
		 try {
	          
	            DbConnection dbconnection=DbConnection.getInstance();
	            Connection con = dbconnection.getConnection();
	            PreparedStatement ps;
	            ps = con.prepareStatement("select emp_cadre from employee_master where emp_id=?");
	            ps.setString(1, applicantId);
	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	            	userCadre = rs.getString(1);
	            }
	            
	        } catch (Exception e) {
	        	logger.info("Error Occut !!");
	        }
		 return userCadre;
	}

	public static String getHodId(String hodName) {
		 String hodIdAndCadre = null; 
		 String hodNameArr[] = null; 
		 try {
			    hodNameArr=hodName.split(" ");
	            
			    DbConnection dbconnection=DbConnection.getInstance();
	            Connection con = dbconnection.getConnection();
	            PreparedStatement ps;
	            ps = con.prepareStatement("select emp_id, emp_cadre from employee_master where emp_first_name=? and emp_last_name=?");
	            ps.setString(1, hodNameArr[0]);
	            ps.setString(2, hodNameArr[1]);
	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	            	hodIdAndCadre = rs.getString(1)+" "+rs.getString(2);
	            }
	            
	        } catch (Exception e) {
	        	e.printStackTrace();
	        	logger.info("Error Occut !!");
	        }
		 return hodIdAndCadre;
	}
	
	
	public static String getEmployeeName(String empId) {
		 String empName = null; 
		 try {
	          
	            DbConnection dbconnection=DbConnection.getInstance();
	            Connection con = dbconnection.getConnection();
	            PreparedStatement ps;
	            ps = con.prepareStatement("select emp_first_name,emp_middle_name,emp_last_name from employee_master where emp_id=?");
	            ps.setString(1, empId);
	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	            	empName = rs.getString(1)+" "+rs.getString(3);
	            }
	            
	        } catch (Exception e) {
	        	logger.info("Error Occut !!");
	        }
		 return empName;
	}

	
	public static int getTxnRetId() {
        try {
            int last_txn_id = 0, txn_count=0;
            DbConnection dbconnection=DbConnection.getInstance();
            Connection con = dbconnection.getConnection();
            PreparedStatement ps, ps2;
            ps = con.prepareStatement("select count(txn_id) from txn_ret_master");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	txn_count = rs.getInt(1);
            }
            if (txn_count == 0) {
                return 1;
            } else {

                ps2 = con.prepareStatement("select max(txn_id) from txn_ret_master");
                ResultSet rs2 = ps2.executeQuery();

                while (rs2.next()) {
                	last_txn_id = rs2.getInt(1);                  
                }
                return last_txn_id + 1;

            }
        } catch (Exception e) {
        	logger.info("Error Occut !!");
        }
        return 0;
    }
	
	
	public static int getPublicationId() {
        try {
            int last_noti_id = 0, noti_count=0;
            DbConnection dbconnection=DbConnection.getInstance();
            Connection con = dbconnection.getConnection();
            PreparedStatement ps, ps2;
            ps = con.prepareStatement("select count(publication_id) from PUBLICATION_MASTER");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	noti_count = rs.getInt(1);
            }
            if (noti_count == 0) {
                return 1;
            } else {

                ps2 = con.prepareStatement("select max(publication_id) from PUBLICATION_MASTER");
                ResultSet rs2 = ps2.executeQuery();

                while (rs2.next()) {
                	last_noti_id = rs2.getInt(1);                  
                }
                return last_noti_id + 1;

            }
        } catch (Exception e) {
        	logger.info("Error Occut !!");
        }
        return 0;
    }
}
