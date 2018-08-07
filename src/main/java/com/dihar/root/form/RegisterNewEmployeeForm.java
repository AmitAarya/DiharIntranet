package com.dihar.root.form;

import org.apache.struts.action.ActionForm;

public class RegisterNewEmployeeForm extends ActionForm  {
	private static final long serialVersionUID = 1L;
	String empId;
	String empName;
	String empGender;
	String empDesignation;
	String empDivision;
	String empCadre;
	String empRemarks;
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpGender() {
		return empGender;
	}
	public void setEmpGender(String empGender) {
		this.empGender = empGender;
	}
	public String getEmpDesignation() {
		return empDesignation;
	}
	public void setEmpDesignation(String empDesignation) {
		this.empDesignation = empDesignation;
	}
	public String getEmpDivision() {
		return empDivision;
	}
	public void setEmpDivision(String empDivision) {
		this.empDivision = empDivision;
	}
	public String getEmpCadre() {
		return empCadre;
	}
	public void setEmpCadre(String empCadre) {
		this.empCadre = empCadre;
	}
	public String getEmpRemarks() {
		return empRemarks;
	}
	public void setEmpRemarks(String empRemarks) {
		this.empRemarks = empRemarks;
	}
	
	}

