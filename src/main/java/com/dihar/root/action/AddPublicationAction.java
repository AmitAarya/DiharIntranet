package com.dihar.root.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.dihar.root.dao.AddPublicationDao;
import com.dihar.root.form.AddPublicationForm;

public class AddPublicationAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		AddPublicationForm fileuploadform = (AddPublicationForm) form;
		
		String p_heading = fileuploadform.getP_heading();
		
		String p_year = fileuploadform.getP_year();
		String p_author = fileuploadform.getP_author();
		//FormFile noti_file = fileuploadform.getNoti_file();
		
		 FormFile myFile = fileuploadform.getP_file();
		 String fileName  = myFile.getFileName();
		 
		 
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
	        
		if (!new AddPublicationDao().isFileInsertedInDatabase(p_heading, p_year, p_author ,fileName, myFile)) {
			return mapping.findForward("failure");
		} else
			return mapping.findForward("success");
	}

}
