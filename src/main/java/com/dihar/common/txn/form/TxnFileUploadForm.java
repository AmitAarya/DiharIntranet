package com.dihar.common.txn.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class TxnFileUploadForm extends ActionForm {
	 
    private static final long serialVersionUID = 1L;
    private String txn_id = null;
    private String returnremarks= null;
    public String getReturnremarks() {
		return returnremarks;
	}


	public void setReturnremarks(String returnremarks) {
		this.returnremarks = returnremarks;
	}





	private FormFile txn_upload_file = null;
    
	
	public FormFile getTxn_upload_file() {
		return txn_upload_file;
	}


	public void setTxn_upload_file(FormFile txn_upload_file) {
		this.txn_upload_file = txn_upload_file;
	}


	public String getTxn_id() {
		return txn_id;
	}


	public void setTxn_id(String txn_id) {
		this.txn_id = txn_id;
	}


	


	@Override
    public void reset(ActionMapping mapping, HttpServletRequest request) {
        this.txn_id = null;
    }
}
