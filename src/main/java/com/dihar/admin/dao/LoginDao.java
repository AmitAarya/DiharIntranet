package com.dihar.admin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dihar.common.DbConnection;
import com.dihar.common.DbQuery;

public class LoginDao {

	public boolean isVerifyLoginData(String username, String password) throws ClassNotFoundException, SQLException {
		DbConnection dbcon = DbConnection.getInstance();
		ResultSet rs = dbcon.executeQuery(dbcon.getConnection(), DbQuery.DmlQuery.ADMIN_LOGIN_DATA,username);
		rs.next();
		if (username != null && password != null && username.equalsIgnoreCase(rs.getString(1))
				&& password.equals(rs.getString(2))) {
			return true;
		}
		return false;
	}

}
