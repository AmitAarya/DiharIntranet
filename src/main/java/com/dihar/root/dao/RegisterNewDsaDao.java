package com.dihar.root.dao;

import com.dihar.common.DbConnection;
import com.dihar.utils.DateUtils;

public class RegisterNewDsaDao {

	public boolean isDsaRegistered(String userId, String userName, String userGender, String userDesignation,
			String userDivision, String userCadre) {
		String fname = null, mname = null, lname = null;
		try {

			DbConnection dbcon = DbConnection.getInstance();
			String[] name = userName.split(" ");
			int size = name.length;
			if (size == 3) {
				fname = name[0];
				mname = name[1];
				lname = name[2];
			} else if (size == 2) {
				fname = name[0];
				mname = "";
				lname = name[1];
			} else if (size == 1) {
				fname = name[0];
				mname = "";
				lname = "";
			}

			int i = dbcon.executeUpdate(dbcon.getConnection(), "insert into login_master values(?,?,?,?)", userId,
					"dihar@" + userId, userCadre, "ACTIVE");
			if (i > 0) {
				int j = dbcon.executeUpdate(dbcon.getConnection(), "insert into dsa_master values(?,?,?,?,?,?,?,?,?)",
						userId, fname, mname, lname, userDesignation, userDivision, userGender, "root",
						DateUtils.getCurrentDateFromDb());
				if (j > 0) {
					return true;
				} else {
					return false;
				}
			} else {
				return false;
			}

		} catch (Exception e) {
			return false;
		}
	}

}
