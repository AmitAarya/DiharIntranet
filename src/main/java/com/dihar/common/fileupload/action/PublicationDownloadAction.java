package com.dihar.common.fileupload.action;

import java.io.FileInputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.common.fileupload.dao.PublicationDownloadDao;
import com.dihar.common.fileupload.form.PublicationDownloadForm;



public class PublicationDownloadAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		PublicationDownloadForm downloadform = (PublicationDownloadForm) form;
		
		//System.out.println(downloadform.getNoti_id());		
		String File_Details=new PublicationDownloadDao().readFileFromDatabase(downloadform.getPublication_id());
		
		
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
