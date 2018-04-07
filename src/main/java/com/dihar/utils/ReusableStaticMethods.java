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

}
