package com.dihar.common.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.common.login.dao.LoginDao;
import com.dihar.common.login.form.LoginForm;

public class LoginAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		LoginForm loginForm = (LoginForm) form;

		if ( new LoginDao().isVerifyLoginData(loginForm.getUserName(),loginForm.getPassword())) {   
			return mapping.findForward("failure");
		} else
			return mapping.findForward("success");
	}

}
