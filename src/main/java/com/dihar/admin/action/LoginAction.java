package com.dihar.admin.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.admin.form.AdminLoginForm;

public class LoginAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		AdminLoginForm loginForm = (AdminLoginForm) form;

		if (loginForm.getUserName() == null || loginForm.getPassword() == null
				|| !loginForm.getUserName().equalsIgnoreCase("Dihar")
				|| !loginForm.getPassword().equals("123")) {
			return mapping.findForward("failure");
		} else
			return mapping.findForward("success");
	}

}