package com.dihar.director.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.director.form.DirectorLoginForm;

public class LoginAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DirectorLoginForm loginForm = (DirectorLoginForm) form;

		if (loginForm.getUserName() == null || loginForm.getPassword() == null
				|| !loginForm.getUserName().equalsIgnoreCase("dsa")
				|| !loginForm.getPassword().equals("@dsa")) {
			return mapping.findForward("failure");
		} else
			return mapping.findForward("success");
	}

}
