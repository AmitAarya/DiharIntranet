package com.dihar.common.txn.action;

import java.io.FileInputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.common.fileupload.form.NotificationDownloadForm;
import com.dihar.common.txn.dao.TxnFileDownloadDao;
import com.dihar.common.txn.form.TxnFileDownloadForm;

public class TxnFileDownloadAction  extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TxnFileDownloadForm txndownloadform = (TxnFileDownloadForm) form;
		
		//System.out.println(downloadform.getNoti_id());		
		String File_Details=new TxnFileDownloadDao().readTxnFileFromDatabase(txndownloadform.getTxn_id());
		
		
		response.setContentType("application/octet-stream");
		
		PrintWriter out = response.getWriter();
		//String filename = File_Details.split("\\.")[0];
		String filepath = "C:\\diharfilebuffer\\";
		response.setContentType("APPLICATION/OCTET-STREAM");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + File_Details + "\"");

		FileInputStream fileInputStream = new FileInputStream(filepath + File_Details);

		int i;
		while ((i = fileInputStream.read()) != -1) {
			out.write(i);
		}
		fileInputStream.close();
		out.close();
        return null;
		//return mapping.findForward("success");
	}

}
