package com.dihar.common.fileupload.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class FileUploadForm extends ActionForm {
	private static final long serialVersionUID = 1L;
	private String noti_heading = null;
	private String noti_type = null;
	private FormFile noti_file = null;
	
	public FormFile getNoti_file() {
		return noti_file;
	}

	public void setNoti_file(FormFile noti_file) {
		this.noti_file = noti_file;
	}

	public String getNoti_heading() {
		return noti_heading;
	}

	public void setNoti_heading(String noti_heading) {
		this.noti_heading = noti_heading;
	}

	public String getNoti_type() {
		return noti_type;
	}

	public void setNoti_type(String noti_type) {
		this.noti_type = noti_type;
	}

	

	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		this.noti_file = null;
	}
}
