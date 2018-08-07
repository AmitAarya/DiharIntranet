package com.dihar.store.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dihar.store.dao.LoginDao;
import com.dihar.store.form.StoreLoginForm;



public class LoginAction extends Action {
	/*@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StoreLoginForm loginForm = (StoreLoginForm) form;

		if ( new LoginDao().isVerifyLoginData(loginForm.getUserName(),loginForm.getPassword())) {
			return mapping.findForward("success");
		} else
			return mapping.findForward("failure");
	}
*/
}
