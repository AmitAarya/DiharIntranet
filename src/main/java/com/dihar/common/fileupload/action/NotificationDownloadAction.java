package com.dihar.common.fileupload.action;

import java.io.FileInputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.common.fileupload.form.NotificationDownloadForm;

public class NotificationDownloadAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		NotificationDownloadForm downloadform = (NotificationDownloadForm) form;
		System.out.println(downloadform.getNoti_id());

		response.setContentType("application/pdf");
		PrintWriter out = response.getWriter();
		String filename = "DownloadCreditCardsucess.pdf";
		String filepath = "D:\\";
		response.setContentType("APPLICATION/OCTET-STREAM");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");

		FileInputStream fileInputStream = new FileInputStream(filepath + filename);

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
