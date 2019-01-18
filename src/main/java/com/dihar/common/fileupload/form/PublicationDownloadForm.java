package com.dihar.common.fileupload.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class PublicationDownloadForm   extends ActionForm {
	 
    private static final long serialVersionUID = 1L;
    private String publication_id = null;

	public String getPublication_id() {
		return publication_id;
	}

	public void setPublication_id(String publication_id) {
		this.publication_id = publication_id;
	}

	@Override
    public void reset(ActionMapping mapping, HttpServletRequest request) {
        this.publication_id = null;
    }
}
