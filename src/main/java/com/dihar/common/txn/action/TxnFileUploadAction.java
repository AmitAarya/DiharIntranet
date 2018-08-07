package com.dihar.common.txn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.dihar.common.fileupload.dao.FileUploadDao;
import com.dihar.common.fileupload.form.FileUploadForm;
import com.dihar.common.txn.dao.TxnFileUploadDao;
import com.dihar.common.txn.form.TxnFileUploadForm;

public class TxnFileUploadAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		TxnFileUploadForm fileuploadform = (TxnFileUploadForm) form;
		String txn_id = fileuploadform.getTxn_id();
		String returnremarks=fileuploadform.getReturnremarks();
		FormFile myFile = fileuploadform.getTxn_upload_file();
		 
		 
		if (!new TxnFileUploadDao().isFileInsertedInDatabase(txn_id,returnremarks, myFile)) {
			return mapping.findForward("failure");
		} else
			return mapping.findForward("success");
	}
}