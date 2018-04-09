package com.dihar.common.fileupload.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.dihar.common.fileupload.dao.FileUploadDao;
import com.dihar.common.fileupload.form.FileUploadForm;

public class FileUploadAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		FileUploadForm fileuploadform = (FileUploadForm) form;
		String noti_heading = fileuploadform.getNoti_heading();
		String noti_type = fileuploadform.getNoti_type();
		//FormFile noti_file = fileuploadform.getNoti_file();
		
		 FormFile myFile = fileuploadform.getNoti_file();
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
	        
		if (!new FileUploadDao().isFileInsertedInDatabase(noti_heading, noti_type,fileName, myFile)) {
			return mapping.findForward("failure");
		} else
			return mapping.findForward("success");
	}

}
