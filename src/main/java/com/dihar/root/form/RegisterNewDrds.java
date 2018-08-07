package com.dihar.root.form;

import org.apache.struts.action.ActionForm;

public class RegisterNewDrds extends ActionForm  {
	private static final long serialVersionUID = 1L;
	String userId;
	String userName;
	String userGender;
	String userDesignation;
	String userDivision;
	String userCadre;
	public String getUserCadre() {
		return userCadre;
	}
	public void setUserCadre(String userCadre) {
		this.userCadre = userCadre;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserDesignation() {
		return userDesignation;
	}
	public void setUserDesignation(String userDesignation) {
		this.userDesignation = userDesignation;
	}
	public String getUserDivision() {
		return userDivision;
	}
	public void setUserDivision(String userDivision) {
		this.userDivision = userDivision;
	}
	
	String userFirstName;
	String userLastName;
	public String getUserFirstName() {
		return userFirstName;
	}
	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}
	public String getUserLastName() {
		return userLastName;
	}
	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}
}
