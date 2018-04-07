package com.dihar.common.fileupload.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class NotificationDownloadForm  extends ActionForm {
	 
    private static final long serialVersionUID = 1L;
    private String noti_id = null;
   
 
    public String getNoti_id() {
		return noti_id;
	}


	public void setNoti_id(String noti_id) {
		this.noti_id = noti_id;
	}


	@Override
    public void reset(ActionMapping mapping, HttpServletRequest request) {
        this.noti_id = null;
    }
}
