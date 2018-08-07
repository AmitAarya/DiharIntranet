package com.dihar.common.txn.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class TxnForm extends ActionForm  {
	 static final long serialVersionUID = 1L;
	 private String applicantId= null;

	

	private FormFile txnFile = null;
	private String txnType= null;
	private String txnTypeSubCatagory= null;
	private String hodCadre= null;
	private String hodName= null;
	private String remarks= null;
	
	public String getApplicantId() {
		return applicantId;
	}



	public void setApplicantId(String applicantId) {
		this.applicantId = applicantId;
	}



	public FormFile getTxnFile() {
		return txnFile;
	}



	public void setTxnFile(FormFile txnFile) {
		this.txnFile = txnFile;
	}



	


	public String getTxnType() {
		return txnType;
	}



	public void setTxnType(String txnType) {
		this.txnType = txnType;
	}



	public String getTxnTypeSubCatagory() {
		return txnTypeSubCatagory;
	}



	public void setTxnTypeSubCatagory(String txnTypeSubCatagory) {
		this.txnTypeSubCatagory = txnTypeSubCatagory;
	}



	public String getHodCadre() {
		return hodCadre;
	}



	public void setHodCadre(String hodCadre) {
		this.hodCadre = hodCadre;
	}



	public String getHodName() {
		return hodName;
	}



	public void setHodName(String hodName) {
		this.hodName = hodName;
	}







	public String getRemarks() {
		return remarks;
	}



	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}



	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		this.txnFile = null;
	}

}