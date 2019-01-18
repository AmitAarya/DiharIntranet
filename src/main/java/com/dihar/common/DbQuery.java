package com.dihar.common;

public class DbQuery {

	public static class DdlQuery {
		public static final String LOGIN_MASTER = "create table login_master ( "
				+ "   login_id VARCHAR(30) PRIMARY KEY, login_password VARCHAR(30), login_type VARCHAR(30), status VARCHAR(30)"
				+ ")";

		public static final String EMPLOYEE_MASTER = "create table employee_master ( "
				+ "   emp_id VARCHAR(30) PRIMARY KEY, emp_first_name VARCHAR(30) NOT NULL, emp_middle_name VARCHAR(30), emp_last_name VARCHAR(30), emp_cadre VARCHAR(30) NOT NULL, emp_designation VARCHAR(30) NOT NULL,emp_division VARCHAR(30), emp_gender VARCHAR(30) NOT NULL , emp_registered_by VARCHAR(30) NOT NULL , emp_adding_date DATE NOT NULL, emp_remarks VARCHAR(30)"
				+ ")";
		
		
		
		
		
		public static final String ROOT_MASTER = "create table root_master ( "
				+ "   root_id VARCHAR(30) PRIMARY KEY, root_first_name VARCHAR(30) NOT NULL,root_middle_name VARCHAR(30),root_last_name VARCHAR(30),root_designation VARCHAR(30) NOT NULL,root_division VARCHAR(30),root_gender VARCHAR(30) NOT NULL "
				+ ")";

		public static final String DIRECTOR_MASTER = "create table director_master ( "
				+ "   dir_id VARCHAR(30) PRIMARY KEY, dir_first_name VARCHAR(30) NOT NULL,dir_middle_name VARCHAR(30),dir_last_name VARCHAR(30),dir_designation VARCHAR(30) NOT NULL, dir_division VARCHAR(30),dir_gender VARCHAR(30) NOT NULL , dir_registered_by VARCHAR(30) NOT NULL , dir_adding_date DATE NOT NULL"
				+ ")";

		public static final String ADMIN_MASTER = "create table admin_master ( "
				+ "   adm_id VARCHAR(30) PRIMARY KEY, adm_first_name VARCHAR(30) NOT NULL,adm_middle_name VARCHAR(30),adm_last_name VARCHAR(30),adm_designation VARCHAR(30) NOT NULL, adm_division VARCHAR(30),adm_gender VARCHAR(30) NOT NULL , adm_registered_by VARCHAR(30) NOT NULL , adm_adding_date DATE NOT NULL"
				+ ")";

		public static final String DSA_MASTER = "create table dsa_master ( "
				+ "   dsa_id VARCHAR(30) PRIMARY KEY, dsa_first_name VARCHAR(30) NOT NULL, dsa_middle_name VARCHAR(30), dsa_last_name VARCHAR(30), dsa_designation VARCHAR(30) NOT NULL,dsa_division VARCHAR(30), dsa_gender VARCHAR(30) NOT NULL , dsa_registered_by VARCHAR(30) NOT NULL , dsa_adding_date DATE NOT NULL"
				+ ")";

		public static final String DRDS_MASTER = "create table drds_master ( "
				+ "   drds_id VARCHAR(30) PRIMARY KEY, drds_first_name VARCHAR(30) NOT NULL, drds_middle_name VARCHAR(30), drds_last_name VARCHAR(30), drds_designation VARCHAR(30) NOT NULL,drds_division VARCHAR(30), drds_gender VARCHAR(30) NOT NULL , drds_registered_by VARCHAR(30) NOT NULL , drds_adding_date DATE NOT NULL"
				+ ")";

		public static final String DRTC_MASTER = "create table drtc_master ( "
				+ "   drtc_id VARCHAR(30) PRIMARY KEY, drtc_first_name VARCHAR(30) NOT NULL, drtc_middle_name VARCHAR(30), drtc_last_name VARCHAR(30), drtc_designation VARCHAR(30) NOT NULL,drtc_division VARCHAR(30), drtc_gender VARCHAR(30) NOT NULL , drtc_registered_by VARCHAR(30) NOT NULL , drtc_adding_date DATE NOT NULL"
				+ ")";

		public static final String STORE_MASTER = "create table store_master ( "
				+ "   store_id VARCHAR(30) PRIMARY KEY, store_first_name VARCHAR(30) NOT NULL, store_middle_name VARCHAR(30), store_last_name VARCHAR(30), store_designation VARCHAR(30) NOT NULL, STORE_division VARCHAR(30), store_gender VARCHAR(30) NOT NULL , store_registered_by VARCHAR(30) NOT NULL , store_adding_date DATE NOT NULL"
				+ ")";

		public static final String AVATAR_MASTER = "create table avatar_master ( "
				+ "   avatar_id VARCHAR(30) NOT NULL, avatar BLOB, avatar_sign BLOB , avatar_type VARCHAR(30)" + ")";

		public static final String NOTIFICATION_MASTER = "create table notification_master ( "
				+ "   noti_id VARCHAR(30) PRIMARY KEY, noti_heading VARCHAR(2000) NOT NULL, noti_type VARCHAR(30) NOT NULL, noti_file_name VARCHAR(500) NOT NULL,noti_file BLOB NOT NULL, noti_file_extension VARCHAR(30) NOT NULL, noti_adding_date DATE NOT NULL, noti_added_by VARCHAR(30) NOT NULL"
				+ ")";

		public static final String PUBLICATION_MASTER = "create table publication_master ( "
				+ "   publication_id VARCHAR(30) PRIMARY KEY, publication_heading VARCHAR(2000) NOT NULL, publication_year VARCHAR(30) NOT NULL,publication_author VARCHAR(500) NOT NULL, publication_file_name VARCHAR(500) NOT NULL,publication_file BLOB NOT NULL, publication_file_extension VARCHAR(30) NOT NULL, publication_adding_date DATE NOT NULL, publication_added_by VARCHAR(30) NOT NULL"
				+ ")";
		
		
		public static final String TXN_MASTER = "create table txn_master ( "
				+ "   txn_id VARCHAR(30)  PRIMARY KEY , txn_date DATE NOT NULL, txn_type VARCHAR(30) NOT NULL, txn_type_subcatagory VARCHAR(30) NOT NULL, txn_applicant_cadre VARCHAR(30) NOT NULL, txn_applicant_id VARCHAR (30),txn_hod_cadre VARCHAR(30),txn_hod_id VARCHAR(30),txn_file_name VARCHAR(500) NOT NULL,txn_file BLOB NOT NULL,txn_file_extension VARCHAR(30) NOT NULL, txn_remarks VARCHAR(300), txn_status VARCHAR(30))";

		
		public static final String TXN_RETURN_MASTER = "create table txn_ret_master ( "
				+ "   txn_ret_id VARCHAR(30)  PRIMARY KEY , txn_ret_date DATE NOT NULL, txn_ret_type VARCHAR(30) NOT NULL, txn_ret_type_subcatagory VARCHAR(30) NOT NULL, txn_ret_applicant_cadre VARCHAR(30) NOT NULL, txn_ret_applicant_id VARCHAR (30),txn_ret_hod_cadre VARCHAR(30),txn_ret_hod_id VARCHAR(30),txn_ret_file_name VARCHAR(500) NOT NULL,txn_ret_file BLOB NOT NULL,txn_ret_file_extension VARCHAR(30) NOT NULL, txn_ret_remarks VARCHAR(300), txn_ret_status VARCHAR(30))";

	}

	public static class DmlQuery {
		public static final String COMMON_LOGIN_DATA = "select login_id, login_password from login_master where login_type='common'";
		public static final String DSA_LOGIN_DATA = "select login_id, login_password from login_master where login_id=? and status='ACTIVE'";
		
		public static final String ADMIN_LOGIN_DATA = "select login_id, login_password from login_master where login_id=? and login_type='ADMIN ALLIED' and status='ACTIVE'";
		
		public static final String DIRECTOR_LOGIN_DATA = "select login_id, login_password from login_master where login_id=? and login_type='DRDS' and status='ACTIVE'";
		
		public static final String DRDS_LOGIN_DATA = "select login_id, login_password from login_master where login_id=? and login_type='DRDS' and status='ACTIVE'";
		public static final String DRTC_LOGIN_DATA = "select login_id, login_password from login_master where login_id=? and login_type='DRTC' and status='ACTIVE'";
		
		public static final String ROOT_LOGIN_DATA = "select login_id, login_password from login_master where login_id=? and status='ACTIVE'";
		public static final String EMP_LOGIN_DATA = "select login_id, login_password from login_master where login_id=? and status='ACTIVE'";

	}

}
