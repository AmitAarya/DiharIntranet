package com.dihar.admin.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.admin.dao.LoginDao;
import com.dihar.admin.form.AdminLoginForm;

public class LoginAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		AdminLoginForm loginForm = (AdminLoginForm) form;

		if ( new LoginDao().isVerifyLoginData(loginForm.getUserName(),loginForm.getPassword())) {
			return mapping.findForward("success");
		} else
			return mapping.findForward("failure");
	}

}
