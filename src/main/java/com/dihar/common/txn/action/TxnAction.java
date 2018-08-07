package com.dihar.common.txn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.dihar.common.txn.dao.TxnDao;
import com.dihar.common.txn.form.TxnForm;

public class TxnAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TxnForm txnform = (TxnForm) form;
		String applicantId=txnform.getApplicantId().trim();
		String txnType=txnform.getTxnType();
		String txnTypeSubCatagory=txnform.getTxnTypeSubCatagory();
		String hodCadre=txnform.getHodCadre();
		String hodName=txnform.getHodName();
		FormFile txn_file = txnform.getTxnFile();
		String remarks=txnform.getRemarks();

		
		
		
		//String noti_heading = fileuploadform.getNoti_heading();
		//String noti_type = fileuploadform.getNoti_type();
		//FormFile noti_file = fileuploadform.getNoti_file();
		
		// FormFile myFile = fileuploadform.getNoti_file();
		// String fileName  = myFile.getFileName();
		 
		/* String contentType = myFile.getContentType();
		  String fileName  = myFile.getFileName();
		  int fileSize = myFile.getFileSize();
		  
		  
		  byte[] fileData  = myFile.getFileData();
		  System.out.println("contentType: " + contentType);
		  System.out.println("File Name: " + fileName);
		  System.out.println("File Size: " + fileSize);
		  System.out.println("File Size: " + fileData);
		  */
		 // return mapping.findForward("success");
	        
		if (!new TxnDao().isTxnPerformed(txnType, txnTypeSubCatagory,applicantId,hodCadre, hodName,txn_file,remarks)) {
			return mapping.findForward("failure");
		} else
			return mapping.findForward("success");
	}

}
