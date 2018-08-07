package com.dihar.common.txn.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class TxnFileDownloadForm extends ActionForm {
	 
    private static final long serialVersionUID = 1L;
    private String txn_id = null;
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
