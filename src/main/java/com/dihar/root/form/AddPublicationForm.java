package com.dihar.root.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class AddPublicationForm extends ActionForm {
	private static final long serialVersionUID = 1L;
	private String p_heading = null;

	private String p_year = null;
	private String p_author = null;
	private FormFile p_file = null;
	
	
	public String getP_heading() {
		return p_heading;
	}
	public void setP_heading(String p_heading) {
		this.p_heading = p_heading;
	}

	public String getP_year() {
		return p_year;
	}
	public void setP_year(String p_year) {
		this.p_year = p_year;
	}
	public String getP_author() {
		return p_author;
	}
	public void setP_author(String p_author) {
		this.p_author = p_author;
	}
	public FormFile getP_file() {
		return p_file;
	}
	public void setP_file(FormFile p_file) {
		this.p_file = p_file;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		this.p_file = null;
	}
	
}